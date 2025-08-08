#include <MathUtils.h>

#include "WeaponRG6.h"
#include "entity.h"
#include "level.h"
#include "actor.h"
#include "ExplosiveRocket.h"
#include "WeaponGrenadeLauncher.h"

#ifdef DEBUG
#	include "phdebug.h"
#endif


CWeaponRG6::~CWeaponRG6()
{
}

BOOL CWeaponRG6::net_Spawn(CSE_Abstract* DC)
{
	BOOL l_res = inheritedSG::net_Spawn(DC);
	if (!l_res) return l_res;

	if (iAmmoElapsed && !getCurrentRocket())
	{
		shared_str grenade_name = m_ammoTypes[0];
		shared_str fake_grenade_name = pSettings->r_string(grenade_name, "fake_grenade_name");

		if (fake_grenade_name.size())
		{
			int k = iAmmoElapsed;
			while (k)
			{
				k--;
				inheritedRL::SpawnRocket(*fake_grenade_name, this);
			}
		}
		//			inheritedRL::SpawnRocket(*fake_grenade_name, this);
	}


	return l_res;
};

void CWeaponRG6::Load(LPCSTR section)
{
	inheritedRL::Load(section);
	inheritedSG::Load(section);
}

#include "inventory.h"
#include "inventoryOwner.h"

void CWeaponRG6::FireStart()
{
	if (GetState() == eIdle && getRocketCount() && iAmmoElapsed)
	{
		inheritedSG::FireStart();
		CWeaponGrenadeLauncher::LaunchGrenade(this);
		dropCurrentRocket();
	}
}

u8 CWeaponRG6::AddCartridge(u8 cnt)
{
	u8 t = inheritedSG::AddCartridge(cnt);
	u8 k = cnt - t;
	shared_str fake_grenade_name = pSettings->r_string(m_ammoTypes[m_ammoType].c_str(), "fake_grenade_name");
	while (k)
	{
		--k;
		inheritedRL::SpawnRocket(*fake_grenade_name, this);
	}
	return t;
}

void CWeaponRG6::OnEvent(NET_Packet& P, u16 type)
{
	inheritedSG::OnEvent(P, type);

	u16 id;
	switch (type)
	{
	case GE_OWNERSHIP_TAKE:
		{
			P.r_u16(id);
			inheritedRL::AttachRocket(id, this);
		}
		break;
	case GE_OWNERSHIP_REJECT:
	case GE_LAUNCH_ROCKET:
		{
			bool bLaunch = (type == GE_LAUNCH_ROCKET);
			P.r_u16(id);
			inheritedRL::DetachRocket(id, bLaunch);
		}
		break;
	}
}

#ifdef CROCKETLAUNCHER_CHANGE
void CWeaponRG6::UnloadRocket()
{
	while (getRocketCount() > 0)
	{
		Msg("%s:%d [%d]-[%s]", __FUNCTION__, __LINE__, getRocketCount(), getCurrentRocket()->cNameSect_str());
		NET_Packet P;
		u_EventGen(P, GE_OWNERSHIP_REJECT, ID());
		P.w_u16(u16(getCurrentRocket()->ID()));
		u_EventSend(P);
        dropCurrentRocket();
	}
}
#endif