function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to cell arrays and logical indexing.
  if iscell(input)
    result = input(~cellfun(@isempty, input)); % Remove empty cells
  else
    result = input;
  end
end

% Example usage that might lead to unexpected behavior:
inputCell = {1,[],3,[],5};
output = myFunction(inputCell);

inputArray = [1,0,3,0,5];
output2 = myFunction(inputArray);