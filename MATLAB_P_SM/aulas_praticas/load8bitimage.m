function img = load8bitimage(filename)

fid = fopen(filename,'r');
N = fread(fid,1,'uint16');
M = fread(fid,1,'uint16');
img = fread(fid,[N,M],'uint8');
fclose(fid);
end