# Write a shell script to update the https://reqres.in/api/users/2 to include the fields name:Your_name, Job:Your_Job and location:Your_location

#SImply request the data
curl -X PUT "https://reqres.in/api/users/2" -d '{"name": "Priyansh", "Job": "Intern", "Location": "Noida"}'