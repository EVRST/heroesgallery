ActionMailer::Base.smtp_settings = {
    user_name: 'SMTP_Injection',
    password: 'b296a895e450d65a1efbeb7a53c507f3070b2bd3',
    address: 'smtp.sparkpostmail.com',
    port: 587,
    enable_starttls_auto: true,
    format: :html,
    from: 'Heroes Gallery <contact@heroes-gallery.com>'
}