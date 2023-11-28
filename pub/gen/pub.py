import jinja2
#import pdfkit
environment = jinja2.Environment()
template = environment.from_string("Hello, {{ name }}!")
template.render(name="World")



from jinja2 import Environment, FileSystemLoader

max_score = 100
test_name = "Python Challenge"
students = [
    {"name": "Sandrine",  "score": 100},
    {"name": "Gergeley", "score": 87},
    {"name": "Frieda", "score": 92},
]

environment = Environment(loader=FileSystemLoader("templates/"))
template = environment.get_template("template.html")

for student in students:
    content = template.render(
        student,
        max_score=max_score,
        test_name=test_name
    )
    filename =  f"message_{student['name'].lower()}"
    filename_htm = "../out/htm/" + filename + ".html"
    filename_pdf = "../out/pdf/" + filename + ".pdf"
    with open(filename_htm, mode="w", encoding="utf-8") as message:
        message.write(content)
    #pdfkit.from_file(filename_htm, filename_pdf)
    print(f"... wrote {filename_pdf}")
 
