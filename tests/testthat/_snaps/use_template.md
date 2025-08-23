# add_r_environ works

    Code
      use_template(template = "global.R", package = "ktools", path = testdata_path)
    Output
      - Copy global.R from template: done 

---

    Code
      use_template(template = "dummy", package = "ktools", path = testdata_path)
    Output
      - Copy dummy from template: template not found! 

