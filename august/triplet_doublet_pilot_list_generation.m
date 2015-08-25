% generate permutation of triplet and doublet combinations in 7 faces.
imNum = 7;
doublet = nchoosek(1:imNum, 2);
temp = randperm(size(doublet,1));
doublet = doublet(temp,:);

triplet = nchoosek(1:imNum, 3);
temp = randperm(size(triplet,1));
triplet = triplet(temp,:);

fid = fopen('doubletPilot.txt','w');
for curItr = 1 : size(doublet,1)
    temp = randperm(size(doublet,2));
    doublet(curItr, :) = doublet(curItr,temp);
    str = sprintf('F%d.jpg,F%d.jpg',doublet(curItr,1),doublet(curItr,2));
    fprintf(fid,'%s\n',str);
end

fid = fopen('tripletPilot.txt','w');
for curItr = 1 : size(triplet,1)
    temp = randperm(size(triplet,2));
    triplet(curItr, :) = triplet(curItr,temp);
    str = sprintf('F%d.jpg,F%d.jpg,F%d.jpg',triplet(curItr,1),triplet(curItr,2),triplet(curItr,3));
    fprintf(fid,'%s\n',str);
end

save('douTriPilot.mat','doublet','triplet');

tripletPractice = nchoosek(10:20,3);
temp = randperm(size(tripletPractice,1));
tripletPractice = tripletPractice(temp,:);

fid = fopen('tripletPractice.txt','w');
for curItr = 1 : size(tripletPractice,1)
    temp = randperm(size(tripletPractice,2));
    tripletPractice(curItr, :) = tripletPractice(curItr,temp);
    str = sprintf('F%d.jpg,F%d.jpg,F%d.jpg',tripletPractice(curItr,1),tripletPractice(curItr,2),tripletPractice(curItr,3));
    fprintf(fid,'%s\n',str);
end

