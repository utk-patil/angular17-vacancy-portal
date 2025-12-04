namespace MyBAL.Vacancies.Models
{
    public class Vacancy
    {
        public long inRowNumber { get; set; }
        public long inTotalRecord { get; set; }

        public int inVacancyID { get; set; }
        public string stTitle { get; set; } = string.Empty;
        public string stDescription { get; set; } = string.Empty;

        public int inCountryID { get; set; }
        public string stCountryName { get; set; } = string.Empty;

        public int inStateID { get; set; }
        public string stStateName { get; set; } = string.Empty;

        public int inCityID { get; set; }
        public string stCityName { get; set; } = string.Empty;

        public bool flgIsActive { get; set; }

        public int inCreatedBy { get; set; }
        public string stCreatedBy { get; set; } = string.Empty;

        public int? inModifiedBy { get; set; }
        public string? stModifiedBy { get; set; } = string.Empty;

        public DateTime dtCreatedAt { get; set; }
        public DateTime? dtModifiedAt { get; set; }
    }
}
