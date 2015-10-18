% triplet_only_gen.m
clc; 
fNum = 953;
triplet_num = 10^4;
tri_tenK_list = zeros(triplet_num, 3);
repCount_array = zeros(fNum, 1);
for curItr = 1 : triplet_num
    curTri = randperm(fNum, 3);
    tri_tenK_list(curItr, :) = curTri;
    repCount_array(curTri(1)) = repCount_array(curTri(1))+1; 
    repCount_array(curTri(2)) = repCount_array(curTri(2))+1;
    repCount_array(curTri(3)) = repCount_array(curTri(3))+1;
end
fprintf('list gen done...\n start to write into txt...\n');
fid = fopen('triplet_10K.txt','w');
for curItr = 1 : triplet_num
    temp = tri_tenK_list(curItr,:);
    str = sprintf('F%d.jpg,F%d.jpg,F%d.jpg',temp(1), temp(2), temp(3));
    fprintf(fid, '%s\n',str);
end
fprintf('Done.\n');
save('triplet_10K_list.mat','tri_tenK_list','repCount_array');