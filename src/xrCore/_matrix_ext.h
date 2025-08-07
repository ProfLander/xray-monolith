#ifndef __M_EXT__
#define __M_EXT__

#include <_matrix.h>
#include <_quaternion.h>
#include <device.h>

template<class T>
IC _matrix<T>& _matrix<T>::hud_to_world()
{
	Device.hud_to_world(*this);
	return *this;
}

template<class T>
IC _matrix<T>& _matrix<T>::world_to_hud()
{
	Device.world_to_hud(*this);
	return *this;
}

template <class T>
IC _matrix<T>& _matrix<T>::rotation(const _quaternion<T>& Q)
{
	T xx = Q.x * Q.x;
	T yy = Q.y * Q.y;
	T zz = Q.z * Q.z;
	T xy = Q.x * Q.y;
	T xz = Q.x * Q.z;
	T yz = Q.y * Q.z;
	T wx = Q.w * Q.x;
	T wy = Q.w * Q.y;
	T wz = Q.w * Q.z;

	_11 = 1 - 2 * (yy + zz);
	_12 = 2 * (xy - wz);
	_13 = 2 * (xz + wy);
	_14 = 0;
	_21 = 2 * (xy + wz);
	_22 = 1 - 2 * (xx + zz);
	_23 = 2 * (yz - wx);
	_24 = 0;
	_31 = 2 * (xz - wy);
	_32 = 2 * (yz + wx);
	_33 = 1 - 2 * (xx + yy);
	_34 = 0;
	_41 = 0;
	_42 = 0;
	_43 = 0;
	_44 = 1;
	return *this;
}

template <class T>
IC _matrix<T>& _matrix<T>::mk_xform(const _quaternion<T>& Q, const Tvector& V)
{
	T xx = Q.x * Q.x;
	T yy = Q.y * Q.y;
	T zz = Q.z * Q.z;
	T xy = Q.x * Q.y;
	T xz = Q.x * Q.z;
	T yz = Q.y * Q.z;
	T wx = Q.w * Q.x;
	T wy = Q.w * Q.y;
	T wz = Q.w * Q.z;

	_11 = 1 - 2 * (yy + zz);
	_12 = 2 * (xy - wz);
	_13 = 2 * (xz + wy);
	_14 = 0;
	_21 = 2 * (xy + wz);
	_22 = 1 - 2 * (xx + zz);
	_23 = 2 * (yz - wx);
	_24 = 0;
	_31 = 2 * (xz - wy);
	_32 = 2 * (yz + wx);
	_33 = 1 - 2 * (xx + yy);
	_34 = 0;
	_41 = V.x;
	_42 = V.y;
	_43 = V.z;
	_44 = 1;
	return *this;
}

#endif