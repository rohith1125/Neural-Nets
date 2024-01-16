% Define parameters
theta = linspace(0, 2*pi, 100);  % Angles for circle points
radius = 1;  % Radius of the cylinder
height = 10;  % Height of the cylinder

% Create circle points at z=0
x_circle = radius * cos(theta);
y_circle = radius * sin(theta);
z_circle = zeros(size(theta));

% Create circle points at x=0
x_circle1 = zeros(size(theta));
y_circle1 = radius * cos(theta);
z_circle1 = radius * sin(theta);

% Create circle points at y=0
x_circle2 = radius * sin(theta);
y_circle2 = zeros(size(theta));
z_circle2 = radius * cos(theta);

% Create circle points at z=height
z_top_circle = height.*ones(size(theta));
x_top_circle = height.*ones(size(theta));
y_top_circle = height.*ones(size(theta));

% Translate the blue cylinder along the negative x-axis by height/2 units
z_circle = z_circle - height/2;
z_top_circle = z_top_circle - height/2;

% Translate the green cylinder along the negative y-axis by height/2 units
y_circle2 = y_circle2 - height/2;
y_top_circle = y_top_circle - height/2;

% Translate the red cylinder along the negative x-axis by height/2 units
x_circle1 = x_circle1 - height/2;
x_top_circle = x_top_circle - height/2;

% Combine points for the surface plot
x_surface = [x_circle; x_circle];
y_surface = [y_circle; y_circle];
z_surface = [z_circle; z_top_circle];

% Combine points for the surface plot
x_surface1 = [x_circle1; x_top_circle];
y_surface1 = [y_circle1; y_circle1];
z_surface1 = [z_circle1; z_circle1];

% Combine points for the surface plot
x_surface2 = [x_circle2; x_circle2];
y_surface2 = [y_circle2; y_top_circle];
z_surface2 = [z_circle2; z_circle2];

% Create the surface plot
figure;
surf(x_surface, y_surface, z_surface, 'EdgeColor', 'none','FaceColor', 'blue');
hold on;  % Fix: Add hold on to keep all surfaces on the same plot
surf(x_surface1, y_surface1, z_surface1, 'EdgeColor', 'none','FaceColor', 'red');
surf(x_surface2, y_surface2, z_surface2, 'EdgeColor', 'none','FaceColor', 'green');
hold off;  % Fix: Add hold off to release the hold
title('Surface Plot of a Tricylinder');  % Fix: Update the title
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
axis equal;