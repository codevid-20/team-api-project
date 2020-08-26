# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


experiences = Experience.create(start_date: "7/29/2018", end_date: "N/A", job_title: "software developer", company_name: "Actualize", details: "A teacher at Actualize.")

experiences = Experience.create(start_date: "2/03/2012", end_date: "07/22/2014", job_title: "intern", company_name: "Dill", details: "Worked as an intern for a pickle company.")

experiences = Experience.create(start_date: "08/10/2014", end_date: "06/30/2018", job_title: "web developer", company_name: "Lavender Space", details: "Designed the company's website and worked on the front end.")

skills = Skill.create(skill_name: "Ruby")

skills = Skill.create(skill_name: "Javascript")

skills = Skill.create(skill_name: "CSS")

skills = Skill.create(skill_name: "Ruby on Rails")

skills = Skill.create(skill_name: "HTML")