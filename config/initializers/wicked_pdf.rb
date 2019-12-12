# WickedPDF Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `render :pdf` call.
#
# To learn more, check out the README:
#
# https://github.com/mileszs/wicked_pdf/blob/master/README.md

# WickedPdf.config = {
#   # Path to the wkhtmltopdf executable: This usually isn't needed if using
#   # one of the wkhtmltopdf-binary family of gems.
#   # exe_path: '/usr/local/bin/wkhtmltopdf',
#   #   or
#   # exe_path: Gem.bin_path('wkhtmltopdf-binary', 'wkhtmltopdf')

#   # Layout file to be used for all PDFs
#   # (but can be overridden in `render :pdf` calls)
#   layout: 'roster.html.erb',
#   print_media_type: true,
#   page_size: 'A4',
#   encoding: 'utf-8',
#   formats: [:html],
#   zoom: 0.8
# }

# if Rails.env.staging? || Rails.env.production?
#   WickedPdf.config = {
#     exe_path: Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s,
#     layout: 'roster.html.erb',
#     print_media_type: true,
#     page_size: 'A4',
#     encoding: 'utf-8',
#     formats: [:html],
#     zoom: 0.8
#   }
# else
#   WickedPdf.config = {
#     #exe_path:  'C:\wkhtmltopdf\bin\wkhtmltopdf.exe',
#     layout: 'roster.html.erb',
#     print_media_type: true,
#     page_size: 'A4',
#     encoding: 'utf-8',
#     formats: [:html],
#     zoom: 0.8
     
#   }
# end

# if Rails.env.staging? || Rails.env.production?
#    WickedPdf.config = {
#      exe_path: Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
#    }
#  else
#    WickedPdf.config = {
#      exe_path: Rails.root.join('bin', 'wkhtmltopdf').to_s
#    }
#     exe_path = '/usr/local/bin/wkhtmltopdf'
# end

if Rails.env.production?
  wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
  
  WickedPdf.config ||= {exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
  WickedPdf.config.merge!({
   # your extra configurations here
    layout: 'roster.html.erb',
    print_media_type: true,
    page_size: 'A4',
    encoding: 'utf-8',
    formats: [:html],
    zoom: 0.8
 })

else
  # Linux (check your processor for Intel x86 or AMD x64)
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-i386"
  # OS X
  WickedPdf.config ||= {
   # your extra configurations here
    layout: 'roster.html.erb',
    print_media_type: true,
    page_size: 'A4',
    encoding: 'utf-8',
    formats: [:html],
    zoom: 0.8
  }
  # Windows
  # wkhtmltopdf_path = 'C:\Program Files/wkhtmltopdf/wkhtmltopdf.exe'
end

