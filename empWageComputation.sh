echo "Welcome to Employee Wage Computation Program"
random=$((RANDOM % 2))
if [ $random -le 1 ]; then
  echo "employee is present."
else
  echo "employee is absent."
fi
