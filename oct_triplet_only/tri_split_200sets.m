% tri_split_200sets.m
load('triplet_10K_list.mat');

for curSet = 1 : 50
    curTextFile = sprintf('./tri_set%d.txt',curSet);
    fid = fopen(curTextFile, 'w');
    for curItr = 1 : 200
        temp = tri_tenK_list(curItr+(curSet-1)*200,:);
        str = sprintf('F%d.jpg,F%d.jpg,F%d.jpg',temp(1), temp(2), temp(3));
        fprintf(fid, '%s\n',str);
    end   
    fclose(fid); 
end



