namespace MyBAL.Vacancies.Models
{
    public class UpdateApplicationStatusRequest
    {
        public int inApplicationID { get; set; }
        public int inStatus { get; set; }
        public int inUserID { get; set; }
    }

}
