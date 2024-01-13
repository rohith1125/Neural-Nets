%{
Generate 3 random vectors s1, s2, s3 of 100 dimensions and normalize them.  
Calculate the 3 by 3 cosine matrix.  
Associate the new  s1, s2, s3 with T1, T2, and T3 from exercise 1.  
Construct an associative matrix and compare the responses R1, R2, R3 to the target vectors.  
Repeat for 10000 dimensions.
%}

s1_new=randn(1,10000)';
s2_new=randn(1,10000)';
s3_new=randn(1,10000)';
disp(s1_new);
disp(s2_new);
disp(s3_new);
%Normalize these, 
s1_new_norm=s1_new/norm(s1_new);
s2_new_norm=s2_new/norm(s2_new);
s3_new_norm=s3_new/norm(s3_new);
disp(s1_new_norm);
disp(s2_new_norm);
disp(s3_new_norm);

cosine_matrix = [dot(s1_new_norm, s1_new_norm), dot(s1_new_norm, s2_new_norm), dot(s1_new_norm, s3_new_norm);
                 dot(s2_new_norm, s1_new_norm), dot(s2_new_norm, s2_new_norm), dot(s2_new_norm, s3_new_norm);
                 dot(s3_new_norm, s1_new_norm), dot(s3_new_norm, s2_new_norm), dot(s3_new_norm, s3_new_norm)];
disp(cosine_matrix);

T1 = [0, 2, 2]';
T2 = [-2, 0, 2]';
T3 = [1, 1, 1]';

w1 = T1 * s1_new_norm';
w2 = T2 * s2_new_norm';
w3 = T3 * s3_new_norm';

w=w1+w2+w3;
disp(w)

response_s1 = w * s1_new_norm;
response_s2 = w * s2_new_norm;
response_s3 = w * s3_new_norm;
disp('The responses we get:')
disp(response_s1);
disp(response_s2);
disp(response_s3);
disp('Given Target Values:')
disp(T1);
disp(T2);
disp(T3);


cosine_sim1 = dot(T1, response_s1) / (norm(T1) * norm(response_s1));
cosine_sim2 = dot(T2, response_s2) / (norm(T2) * norm(response_s2));
cosine_sim3 = dot(T3, response_s3) / (norm(T3) * norm(response_s3));


disp('Similarity between response and corresponding targets:')
disp(cosine_sim1);
disp(cosine_sim2);
disp(cosine_sim3);