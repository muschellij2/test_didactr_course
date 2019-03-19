library(didactr)
library(rmarkdown)
sc = create_course(course_name="test_didactr_course")
out_rmd = create_lesson(
  lesson_name = "Test Lesson",
  course_dir = sc$course_dir)

out_rmd = create_lesson(
  lesson_name = "Lesson with Code",
  course_dir = sc$course_dir,
  template_slide_id = "1Tg-GTGnUPduOtZKYuMoelqUNZnUp3vvg_7TtpUPL7e8",
  extract_code = TRUE,
  rmd = TRUE,
  open = FALSE)    
rmarkdown::render(out_rmd$md_file)