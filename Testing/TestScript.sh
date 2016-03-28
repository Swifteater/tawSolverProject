echo "Starting Test Script..."
echo "Preparing for Test..."
rm ./Testing/Results/1.txt
make all
echo "Starting Test..."
./bin/tawSolver ./Testing/CNF/EmptyClause.cnf |&head -1 >> ./Testing/Results/1.txt


echo "Ending Test"
echo "Results..."
cat ./Testing/Results/1.txt

echo "Ending Test Script"