function save8bitimage(filename, img)

[n,m] = size(img);
N = uint16(n);
M = uint16(m);

fid = fopen(filename,'w');
fwrite(fid,N,'uint16');
fwrite(fid,M,'uint16');
fwrite(fid,img,'uint8');
% fwrite(fid,img_rle,'uint8');
fclose(fid);
end