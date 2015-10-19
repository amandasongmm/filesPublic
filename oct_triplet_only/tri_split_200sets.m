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



% for curR = 1 : repTimes%
%     for curG = 1 : groupNum
%         % read one set of trials
%         startInd = (curR-1)*groupNum + curG;
%         douTemplate = squeeze(douArray1(startInd, :, :));
%         % write it into txt file
%         douName = sprintf('../filesPublic/sampleMethod1/sampleMethod1_set%drep%d.txt',curG, curR);
%         fid = fopen(douName, 'w');
%         for curItr = 1 : subsetNum
%             str = sprintf('F%d.jpg,F%d.jpg',douTemplate(curItr, 1), douTemplate(curItr, 2));
%             fprintf(fid,'%s\n',str);
%         end
%         fclose(fid);
%     end
% end
