# 📦 Nạp packages cần thiết
pacman::p_load(
  dplyr, tidyr, forcats, haven,
  ggplot2, lubridate, glue, flextable,
  officer, officedown, jpeg, png, grid,
  tidyverse, magrittr,  
  purrr, RColorBrewer, janitor,
  effectsize, patchwork, scales, stringr,
  tidytext  # ✅ Thêm dòng này
 
)

# ✨ Thiết lập mặc định cho flextable
set_flextable_defaults(
  font.family = "Times New Roman",
  font.size = 11,
  align = "center",
  padding = 3,
  theme_fun = theme_booktabs,
  layout = "autofit",
  width = 1,
  decimal.mark = ",",
  big.mark = ".",
  na_str = "-"
)

# 🎨 Thiết lập theme ggplot
theme_set(
  theme_minimal(base_family = "Times New Roman") +
    theme(
      text = element_text(family = "Times New Roman"),
      plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
      axis.title = element_text(size = 12),
      axis.text = element_text(size = 11),
      legend.text = element_text(size = 11),
      legend.title = element_text(size = 11),
      strip.text = element_text(size = 12)
    )
)

# 🖼️ Thiết lập chunk mặc định cho knitr
knitr::opts_chunk$set(
  fig.align = "center",
  out.width = "100%",
  fig.asp = 0.618
)

# 🔢 Định dạng số thập phân kiểu Việt
options(OutDec = ",")

# 🎨 Palette mặc định cho ggplot2
scale_color_discrete <- function(...) scale_color_brewer(palette = "Set1", ...)
scale_fill_discrete  <- function(...) scale_fill_brewer(palette = "Pastel2", ...)

# 📋 Hàm tạo flextable định dạng tiếng Việt
ft_vn <- function(df) {
  flextable(df) %>%
    colformat_num(decimal.mark = ",", big.mark = ".", na_str = "-") %>%
    autofit()
}

# 🔵 Hàm đổi chữ sang xanh (cho in đậm, đẹp)
text_blue <- function(text) {
  ftext(
    text,
    fp_text_lite(
      color = "blue",
      font.family = "Times New Roman"
    )
  )
}

