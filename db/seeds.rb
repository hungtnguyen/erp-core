# Create default admin user for developing
Erp::User.create(
  email: "1633514@hcmut.edu.vn",
  password: "1633514",
  name: "Nguyễn Tôn Hùng",
  backend_access: true,
  confirmed_at: Time.now-1.day,
  active: true
) if Erp::User.where(email: "1633514@hcmut.edu.vn").empty?