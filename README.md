# Wheeled-robot-model
Kinematic model of a two-wheeled robot

Code created to support a Linkedin post. Follow me on Linkedin! https://www.linkedin.com/in/simone-bertoni-control-eng/

Original post: https://www.linkedin.com/posts/simone-bertoni-control-eng_wheeled-robot-kinematic-model-activity-7028271068167426048-nsJd?utm_source=share&utm_medium=member_desktop

Don't know where to start with mobile robots?

Here's your stepping stone.

A two-wheeled robot is one of the simplest architectures used for mobile robots.

It's also really interesting to study non-linear control algorithms and guidance techniques.

Let's work this model up then!

Let's assume that our robot has two wheels of radius r, and the distance between the wheels is d.

We want to express the motion of the robot with respect to a fixed frame of reference where the coordinates are x and y (figure below).

We also need a frame of reference attached to the robot, with the origin located in the centre of mass of the robot and where the xr axis is always aligned to the longitudinal axis of the robot. This frame has coordinates xr and yr.

The angle between xr and x is called psi.

The motion is assumed to be kinematic, so the two wheels can only move along xr when they are spinning (i.e. they don't slip).

We call omega1 and omega2 the angular speed (in rad/s) of wheel 1 and wheel 2. We also call u1 and u2 their linear speed.

Then we have:

✅ u1 = omega1*r

✅ u2 = omega2*r

Now let u and v be the linear speed of the robot (the centre of mass) along xr and yr. Assuming the robot is a rigid body if wheel 1 moves at u1 and wheel 2 moves at u2 along xr, then u = (u1 + u2)/2 and v is always 0:

✅ u = omega1*r/2 + omega2*r/2

✅ v = 0

Finally, we can write the equation of motion, where the state variables are [x, y, psi]:

✅ dx/dt = u*cos(psi)

✅ dy/dt = u*sin(psi)

✅ dpsi/dt = omega2*r/d - omega1*r/d

Being a kinematic system model we can assume that each wheel's speed controllers are ideal and our system's input commands are omega1 and omega2.

In the slides below you can see the implementation in Xcos and the result of the simulation.

To test the model I provided omega1 and omega 2 in open loop as follows:

✅ Accelerate both wheels to 3 rad/s in the first 20 seconds

✅ Accelerate wheel 2 to 3.5 rad/s from second 20 to 30, whilst keeping wheel 1 constant, to start turning left

✅ From second 60 to 70 accelerate wheel 1 to 3.5 rad/s to go straight

✅ From second 90 to 120 decelerate wheel 2 to 3 rad/s, to start turning right

This system is super interesting and I plan to use it in the future for a few things:

✅ Controlling speed and yaw using PIDs

✅ Trajectory following

✅ Advanced control techniques like MPC

The link to the code in Scilab is in the first comment.

If you enjoyed this follow me for more tips on control and embedded software engineering.

Hit the 🔔 on my profile to get a notification for all my new posts.

Feel free to ask anything in the comments, I'll do my best to answer.

#controlsystems #embeddedsystems #softwareengineering #embeddedsoftware #controltheory #robotics
