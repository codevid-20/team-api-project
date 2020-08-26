# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Student.create(first_name: "kris", last_name: "henri", email: "kris@kris.com", phone_number: "2435267282", short_bio: "Hey I'm Kris...", linkedin_url: "kris.linkedin", twitter_handle: "@kris", personal_blog: "kris.personal.blog", online_resume: "krisresume.pdf", github_url: "kris-kris", photo: "kris.jpg")

experiences = Experience.create(start_date: "7/29/2018", end_date: "N/A", job_title: "software developer", company_name: "Actualize", details: "A teacher at Actualize.")

experiences = Experience.create(start_date: "2/03/2012", end_date: "07/22/2014", job_title: "intern", company_name: "Dill", details: "Worked as an intern for a pickle company.")

experiences = Experience.create(start_date: "08/10/2014", end_date: "06/30/2018", job_title: "web developer", company_name: "Lavender Space", details: "Designed the company's website and worked on the front end.")

Education.create(start_date: "01/02/0001", end_date: "01/02/0002", degree: "Beaver Master", university_name: "Sephora University", details: "99 years being dumb...", user_id: "1")
