theta = linspace(0, 2*pi, 100);  % Angles for circle points
radius = 1;  % Radius of the cylinder
height = 1;  % Height of the cylinder

% Create circle points at z=0
x_circle = radius * cos(theta);
y_circle = radius * sin(theta);
z_circle = zeros(size(theta));

% Create circle points at z=1
z_top_circle = ones(size(theta));

% Combine points for the surface plot
x_surface = [x_circle; x_circle];
y_surface = [y_circle; y_circle];
z_surface = [z_circle; z_top_circle];

% Create the surface plot
figure;
surf(x_surface, y_surface, z_surface, 'EdgeColor', 'none');
title('Surface Plot of a Cylinder');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
axis equal;
