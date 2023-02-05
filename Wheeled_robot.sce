scheme = "Wheeled robot model\Wheeled_robot.zcos";

// Simulate first
importXcosDiagram(scheme);
typeof(scs_m); //The diagram data structure
ctx = ["d = 0.2; r = 0.05;"];
scs_m.props.context = ctx;
xcos_simulate(scs_m, 4);

// Draw

subplot(211);
h = plot(omega1_out.time, omega1_out.values, 'b-', omega2_out.time, omega2_out.values, 'r-', 'LineWidth',3);
l = legend("Omega 1", "Omega 2");
l.font_size = 3;
ax=gca(),// get the handle on the current axes
set(gca(),"grid",[1 1]);
xlabel('t[s]', 'font_style', 'times bold', 'font_size', 3);
ylabel('Angular speed [rad/s]', 'font_style', 'times bold', 'font_size', 3);
title('Robot wheels angular speed', 'font_style', 'times bold', 'font_size', 4);

subplot(212);
h = plot(x_out.values, y_out.values, 'b-', 'LineWidth',3);
ax=gca(),// get the handle on the current axes
set(gca(),"grid",[1 1]);
xlabel('x[m]', 'font_style', 'times bold', 'font_size', 3);
ylabel('y[m]', 'font_style', 'times bold', 'font_size', 3);
title('Robot position on x-y plane', 'font_style', 'times bold', 'font_size', 4);
