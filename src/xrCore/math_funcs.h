#ifndef _XRCORE_MATH_FUNCS_
#define _XRCORE_MATH_FUNCS_

// normalize angle (0..2PI)
ICF float angle_normalize_always(float a)
{
	float div = a / PI_MUL_2;
	int rnd = (div > 0) ? iFloor(div) : iCeil(div);
	float frac = div - rnd;
	if (frac < 0) frac += 1.f;
	return frac * PI_MUL_2;
}

// normalize angle (0..2PI)
ICF float angle_normalize(float a)
{
	if (a >= 0 && a <= PI_MUL_2) return a;
	else return angle_normalize_always(a);
}

// -PI .. +PI
ICF float angle_normalize_signed(float a)
{
	if (a >= (-PI) && a <= PI) return a;
	float angle = angle_normalize_always(a);
	if (angle > PI) angle -= PI_MUL_2;
	return angle;
}

// -PI..PI
ICF float angle_difference_signed(float a, float b)
{
	float diff = angle_normalize_signed(a) - angle_normalize_signed(b);
	if (diff > 0)
	{
		if (diff > PI)
			diff -= PI_MUL_2;
	}
	else
	{
		if (diff < -PI)
			diff += PI_MUL_2;
	}
	return diff;
}

// 0..PI
ICF float angle_difference(float a, float b)
{
	return _abs(angle_difference_signed(a, b));
}

IC bool are_ordered(float const value0, float const value1, float const value2)
{
	if ((value1 >= value0) && (value1 <= value2))
		return true;

	if ((value1 <= value0) && (value1 >= value2))
		return true;

	return false;
}

IC bool is_between(float const value, float const left, float const right)
{
	return are_ordered(left, value, right);
}

// c=current, t=target, s=speed, dt=dt
IC bool angle_lerp(float& c, float t, float s, float dt)
{
	float const before = c;
	float diff = t - c;
	if (diff > 0)
	{
		if (diff > PI)
			diff -= PI_MUL_2;
	}
	else
	{
		if (diff < -PI)
			diff += PI_MUL_2;
	}
	float diff_a = _abs(diff);

	if (diff_a < EPS_S)
		return true;

	float mot = s * dt;
	if (mot > diff_a) mot = diff_a;
	c += (diff / diff_a) * mot;

	if (is_between(c, before, t))
		return false;

	if (c < 0)
		c += PI_MUL_2;
	else if (c > PI_MUL_2)
		c -= PI_MUL_2;

	return false;
}

// Just lerp :) expects normalized angles in range [0..2PI)
ICF float angle_lerp(float A, float B, float f)
{
	float diff = B - A;
	if (diff > PI) diff -= PI_MUL_2;
	else if (diff < -PI) diff += PI_MUL_2;

	return A + diff * f;
}

IC float angle_inertion(float src, float tgt, float speed, float clmp, float dt)
{
	float a = angle_normalize_signed(tgt);
	angle_lerp(src, a, speed, dt);
	src = angle_normalize_signed(src);
	float dH = angle_difference_signed(src, a);
	float dCH = clampr(dH, -clmp, clmp);
	src -= dH - dCH;
	return src;
}

IC float angle_inertion_var(float src, float tgt, float min_speed, float max_speed, float clmp, float dt)
{
	tgt = angle_normalize_signed(tgt);
	src = angle_normalize_signed(src);
	float speed = _abs((max_speed - min_speed) * angle_difference(tgt, src) / clmp) + min_speed;
	angle_lerp(src, tgt, speed, dt);
	src = angle_normalize_signed(src);
	float dH = angle_difference_signed(src, tgt);
	float dCH = clampr(dH, -clmp, clmp);
	src -= dH - dCH;
	return src;
}

// linear interpolation
template <class T>
inline constexpr T _lerp(const T& _val_a, const T& _val_b, const float& _factor)
{
	return (_val_a * (1.0f - _factor)) + (_val_b * _factor);
}

template <class T>
inline constexpr T _lerpc(const T& _val_a, const T& _val_b, const float& _factor)
{
	float factor_c = clampr(_factor, 0.0f, 1.0f);
	return (_val_a * (1.0 - factor_c)) + (_val_b * factor_c);
}

// inertion
IC float _inertion(float _val_cur, float _val_trgt, float _friction)
{
	float friction_i = 1.f - _friction;
	return _val_cur * _friction + _val_trgt * friction_i;
}

#endif //_XRCORE_MATH_FUNCS_