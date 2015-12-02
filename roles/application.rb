# Name of the role should match the name of the file
name "application"

# Run list function we mentioned earlier
run_list(
   # "recipe[go]",
    "recipe[golang]",
    "recipe[go-app]"
)