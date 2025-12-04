using Microsoft.AspNetCore.Mvc;
using MyBAL.Vacancies.Models;
using MyLibrary.Utilities;

namespace MyAPI.Areas.Vacancy.Controllers
{
    [ApiController]
    public class VacancyController : ControllerBase
    {
        private readonly VacancyDataContext moVacancyDataContext;

        public VacancyController(VacancyDataContext foVacancyDataContext)
        {
            this.moVacancyDataContext = foVacancyDataContext;
        }

        [HttpGet]
        [Route("api/v1/vacancies")]
        public async Task<IActionResult> GetVacancies([FromQuery] int? id, int? userid, string? search, bool? active, int? pn, int? ps)
        {
            if (pn == null || pn <= 0) pn = 1;

            if (ps == null || ps <= 0) ps = 10;

            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            List<MyBAL.Vacancies.Models.Vacancy> loVacancies = await loVacancyBAL.GetVacanciesAsync(id, null, userid, active, search ?? string.Empty, pn.Value, ps.Value);

            return Ok(new
            {
                status = loVacancies.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loVacancies.Count > 0 ? "" : "No records found.",
                vacancies = loVacancies
            });
        }

        [HttpGet]
        [Route("api/v1/my-vacancies")]
        public async Task<IActionResult> GetMyVacancies([FromQuery] int? id, int? userid, string? search, bool? active, int? pn, int? ps)
        {
            if (pn == null || pn <= 0) pn = 1;

            if (ps == null || ps <= 0) ps = 10;

            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            List<MyBAL.Vacancies.Models.Vacancy> loVacancies = await loVacancyBAL.GetVacanciesAsync(id, userid, null, active, search ?? string.Empty, pn.Value, ps.Value);

            return Ok(new
            {
                status = loVacancies.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loVacancies.Count > 0 ? "" : "No records found.",
                vacancies = loVacancies
            });
        }

        [HttpGet]
        [Route("api/v1/my-applications/{userid}")]
        public async Task<IActionResult> GetMyApplications([FromQuery] int userid, int? id, string? search, int? status, int? pn, int? ps)
        {
            if (pn == null || pn <= 0) pn = 1;

            if (ps == null || ps <= 0) ps = 10;

            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            List<MyBAL.Vacancies.Models.MyApplication> loMyApplications = await loVacancyBAL.GetMyApplicationsAsync(id, userid, search ?? string.Empty, status, pn.Value, ps.Value);

            return Ok(new
            {
                status = loMyApplications.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loMyApplications.Count > 0 ? "" : "No records found.",
                myapplications = loMyApplications
            });
        }

        [HttpPost]
        [Route("api/v1/withdraw")]
        public async Task<IActionResult> WithdrawApplication([FromBody] WithdrawApplicationRequest foWithdrawApplicationRequest)
        {
            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            int liSuccess = await loVacancyBAL.WithdrawApplicationAsync(foWithdrawApplicationRequest.inApplicationID, foWithdrawApplicationRequest.inUserID);

            return Ok(new
            {
                status = liSuccess,
                message = liSuccess == StoredProcedureStatusCode.Success ? "Application withdrawn successfully." : "Unable to withdraw application."
            });
        }

        [HttpPost]
        [Route("api/v1/apply")]
        public async Task<IActionResult> ApplyVacancy([FromBody] ApplyVacancyRequest foApplyVacancyRequest)
        {
            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            int liSuccess = await loVacancyBAL.ApplyVacancyAsync(foApplyVacancyRequest.inVacancyID, foApplyVacancyRequest.inUserID);

            return Ok(new
            {
                status = liSuccess,
                message = liSuccess == StoredProcedureStatusCode.Inserted ? "Application submitted successfully." : liSuccess == StoredProcedureStatusCode.Exists ? "You have already applied for this vacancy." : "Something went wrong."
            });
        }

        [HttpPost]
        [Route("api/v1/post-vacancy")]
        public async Task<IActionResult> ApplyVacancy([FromBody] PostVacancyRequest foPostVacancyRequest)
        {
            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            int liSuccess = await loVacancyBAL.PostVacancyAsync(foPostVacancyRequest);

            return Ok(new
            {
                status = liSuccess,
                message = liSuccess switch
                {
                    101 => "Vacancy created successfully.",
                    102 => "Vacancy updated successfully.",
                    _ => "No changes applied."
                }
            });
        }

        [HttpPost]
        [Route("api/v1/delete-vacancy")]
        public async Task<IActionResult> DeleteVacancy(DeleteVacancyRequest foDeleteVacancyRequest)
        {
            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            int liSuccess = await loVacancyBAL.DeleteVacancyAsync(foDeleteVacancyRequest.inVacancyID);

            string lsMessage = liSuccess == 103
                                ? "Vacancy deleted successfully."
                                : "No record found.";

            return Ok(new
            {
                status = liSuccess,
                message = lsMessage
            });
        }

        [HttpGet]
        [Route("api/v1/my-vacancy-applications/{userid}")]
        public async Task<IActionResult> GetVacancyApplications([FromQuery] int userid, int? id, string? search, int? status, int? pn, int? ps)
        {
            if (pn == null || pn <= 0) pn = 1;

            if (ps == null || ps <= 0) ps = 10;

            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            List<MyBAL.Vacancies.Models.MyApplication> loMyApplications = await loVacancyBAL.GetVacancyApplicationsAsync(id, userid, search ?? string.Empty, status, pn.Value, ps.Value);

            return Ok(new
            {
                status = loMyApplications.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loMyApplications.Count > 0 ? "" : "No records found.",
                myapplications = loMyApplications
            });
        }

        [HttpPost]
        [Route("api/v1/update-application-status")]
        public async Task<IActionResult> UpdateApplicationStatus(UpdateApplicationStatusRequest foUpdateApplicationStatusRequest)
        {
            MyBAL.Vacancies.Vacancies loVacancyBAL = new MyBAL.Vacancies.Vacancies(moVacancyDataContext);

            int liSuccess = await loVacancyBAL.UpdateApplicationStatusAsync(foUpdateApplicationStatusRequest.inApplicationID, foUpdateApplicationStatusRequest.inStatus, foUpdateApplicationStatusRequest.inUserID);

            return Ok(new
            {
                status = liSuccess,
                message = liSuccess == StoredProcedureStatusCode.Updated ? "Application status updated successfully" : "Application not found"
            });
        }
    }
}
