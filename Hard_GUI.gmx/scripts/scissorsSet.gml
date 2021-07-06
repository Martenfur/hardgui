///scissorsSet(x,y,w,h)

shader_set(sh_scissors)
shader_set_uniform_f(global.u_Border,argument0,argument1,argument0+argument2,argument1+argument3)
