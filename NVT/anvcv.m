function anvcv(filename)
data = load(filename);
vcv = data(:,5);
normplot(vcv);
end