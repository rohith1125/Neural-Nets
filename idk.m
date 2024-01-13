s1 = [1, -1, 1, -1, 1, -1, 1, -1]';
s2 = [1, 1, 1, 1, -1, -1, -1, -1]';
s3 = [1, 1, -1, -1, 1, 1, -1, -1]';

s1_normalized = s1 / norm(s1);
s2_normalized = s2 / norm(s2);
s3_normalized = s3 / norm(s3);
disp('Normalized Values:');
disp(s1_normalized);
disp(s2_normalized);
disp(s3_normalized);

dot1 = s1_normalized' * s2_normalized;
dot2 = s1_normalized' * s3_normalized;
dot3 = s2_normalized' * s3_normalized;

T1 = [0, 2, 2]';
T2 = [-2, 0, 2]';
T3 = [1, 1, 1]';

w1 = T1 * s1_normalized';
w2 = T2 * s2_normalized';
w3 = T3 * s3_normalized';

w = w1 + w2 + w3;
disp(w);

response_s1 = w * s1_normalized;
response_s2 = w * s2_normalized;
response_s3 = w * s3_normalized;

disp('Dot Products:');
disp(dot1);
disp(dot2);
disp(dot3);

disp('Response Values:');
disp(response_s1);
disp(response_s2);
disp(response_s3);

disp('Given Target Values:');
disp(T1);
disp(T2);
disp(T3);

disp('Avg Vector:');
average_normalized = (s1_normalized + s2_normalized) / 2;
ans2=w*average_normalized;
disp(average_normalized);
disp(ans2);