% Define input vectors
s1 = [1 -1 1 -1 1 -1 1 -1]';
s2 = [1 1 1 1 -1 -1 -1 -1]';
s3 = [1 1 -1 -1 1 1 -1 -1]';

% Define target vectors
T1 = [0 2 2];
T2 = [-2 0 2];
T3 = [1 1 1];
T = [T1; T2; T3];

% Normalize input vectors
s1_normalized = s1 / norm(s1);
s2_normalized = s2 / norm(s2);
s3_normalized = s3 / norm(s3);

% Check orthogonality
disp('Inner product of s1_normalized and s2_normalized:')
disp(dot(s1_normalized, s2_normalized));

disp('Inner product of s1_normalized and s3_normalized:')
disp(dot(s1_normalized, s3_normalized));

disp('Inner product of s2_normalized and s3_normalized:')
disp(dot(s2_normalized, s3_normalized));

% Construct associative matrix
A = T * [s1_normalized, s2_normalized, s3_normalized]';

% Display associative matrix
disp('Associative matrix A:')
disp(A);


%{
 S*T

ans =

  -0.3536    1.0607    1.7678
  -0.3536   -0.3536    0.3536
  -1.0607    0.3536    1.0607
  -1.0607   -1.0607   -0.3536
   1.0607    1.0607    0.3536
   1.0607   -0.3536   -1.0607
   0.3536    0.3536   -0.3536
   0.3536   -1.0607   -1.7678



S*T'

ans =

   1.4142         0    1.0607
   1.4142    1.4142    0.3536
        0   -1.4142    0.3536
        0         0   -0.3536
        0         0    0.3536
        0    1.4142   -0.3536
  -1.4142   -1.4142   -0.3536
  -1.4142         0   -1.0607



T'*S'

ans =

  -0.3536   -0.3536   -1.0607   -1.0607    1.0607    1.0607    0.3536    0.3536
   1.0607   -0.3536    0.3536   -1.0607    1.0607   -0.3536    0.3536   -1.0607
   1.7678    0.3536    1.0607   -0.3536    0.3536   -1.0607   -0.3536   -1.7678

T*S'

ans =

   1.4142    1.4142         0         0         0         0   -1.4142   -1.4142
        0    1.4142   -1.4142         0         0    1.4142   -1.4142         0
   1.0607    0.3536    0.3536   -0.3536    0.3536   -0.3536   -0.3536   -1.0607

s_avg = (s1_normalized + s2_normalized) / 2;
result = A * s_avg

result =

    1.0000
   -1.0000
    1.0000

s_avg

s_avg =

    0.3536
         0
    0.3536
         0
         0
   -0.3536
         0
   -0.3536

%}
