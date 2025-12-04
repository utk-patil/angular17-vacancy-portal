namespace MyBAL.Vacancies.Models
{
    public class PostVacancyRequest
    {
        public int inVacancyID { get; set; }
        public string stTitle { get; set; } = string.Empty;
        public string stDescription { get; set; } = string.Empty;
        public int inCountryID { get; set; }
        public int inStateID { get; set; }
        public int inCityID { get; set; }
        public bool flgIsActive { get; set; }
        public int inUserID { get; set; }
    }
}
