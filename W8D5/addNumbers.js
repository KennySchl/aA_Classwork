const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

const addNumbers = (sum = 0, numsLeft, completionCallback) => {
  if (numsLeft > 0) {
    reader.question("Enter a number: ", (num) => {
      const number = parseInt(num);
      sum += number;
      console.log(sum);
      addNumbers(sum, numsLeft - 1, completionCallback);
    });
  }

  if (numsLeft === 0) {
    completionCallback(sum);
  }
};

addNumbers(0, 3, (sum) => {
  console.log(`Total Sum: ${sum}`);
  reader.close();
});
