namespace MyBAL.Users.Models
{
    public class LoginUser
    {
        public int inUserID { get; set; }
        public string stName { get; set; } = string.Empty;
        public string stUsername { get; set; } = string.Empty;
        public string stEmail { get; set; } = string.Empty;
        public int inRoleID { get; set; }
        public string stRoleName { get; set; } = string.Empty;
    }
}
