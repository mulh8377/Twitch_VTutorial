module main

struct FloatPoint {
	x f32
	y f32
	z f32
}

fn none_init_fp() &FloatPoint {
	return &FloatPoint{0.0, 0.0, 0.0}
}

fn base_init_fp(_x f32, _y f32, _z f32) &FloatPoint {
	return &FloatPoint{x:_x, y:_y, z:_z}
}

fn xy_init_fp(_x f32, _y f32) &FloatPoint {
	return &FloatPoint{_x, _y, 0.0}
}

fn copy_deep_fp(fp &FloatPoint) &FloatPoint {
	return &FloatPoint {
		x: fp.x,
		y: fp.y,
		z: fp.z
	}
}

fn copy_shallow_fp(fp &FloatPoint) FloatPoint {
	return FloatPoint {
		x: fp.x, y: fp.y, z: fp.z
	}
}

fn logic_eq_fp (a FloatPoint, b FloatPoint) bool {
	if a.x == b.x && a.y == b.y && a.z == b.z {
		return true
	}
	else {
		return false
	}
}

fn str_header_fp() string {
	return "X, Y, Z"
}

fn str_csv_fp(fp &FloatPoint) string {
	return fp.x.str() + "," + fp.y.str() + "," + fp.z.str()
}


fn main() {
	empt := none_init_fp()
	fp := base_init_fp(10.0, 10.0, 10.0)

	println(str_header_fp())
	println(str_csv_fp(fp))
	println(str_csv_fp(empt))

	d_test := copy_deep_fp(fp)
	s_test := copy_shallow_fp(empt)

	println(str_csv_fp(d_test))
	println(str_csv_fp(s_test))

	println(logic_eq_fp(s_test, empt))
	println(logic_eq_fp(fp, d_test))
	
}