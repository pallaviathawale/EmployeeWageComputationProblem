echo "Welcome to Employee Wage Computation Program"
echo "Enter the name of the employee: "
read name
random=$((RANDOM % 100))
if [ $random -le 50 ]; then
  echo "$name is present."
else
  echo "$name is absent."
fi
