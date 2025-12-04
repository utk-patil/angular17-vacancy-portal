using Microsoft.AspNetCore.Mvc;
using MyBAL.Common.Models;
using MyLibrary.Utilities;

namespace MyAPI.Areas.Common.Controllers
{
    [ApiController]
    public class CommonController : ControllerBase
    {
        private readonly CommonDataContext moCommonDataContext;

        public CommonController(CommonDataContext foCommonDataContext)
        {
            this.moCommonDataContext = foCommonDataContext;
        }

        [HttpGet]
        [Route("api/v1/countries")]
        public async Task<IActionResult> GetCountries()
        {
            MyBAL.Common.Common loCommonBAL = new MyBAL.Common.Common(moCommonDataContext);

            List<Country> loCountries = await loCommonBAL.GetCountriesAsync();

            return Ok(new
            {
                status = loCountries.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loCountries.Count > 0 ? "" : "No records found.",
                countries = loCountries
            });
        }

        [HttpGet]
        [Route("api/v1/states/{cid}")]
        public async Task<IActionResult> GetStates(int cid)
        {
            MyBAL.Common.Common loCommonBAL = new MyBAL.Common.Common(moCommonDataContext);

            List<State> loStates = await loCommonBAL.GetStatesAsync(cid);

            return Ok(new
            {
                status = loStates.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loStates.Count > 0 ? "" : "No records found.",
                states = loStates
            });
        }

        [HttpGet]
        [Route("api/v1/cities/{sid}")]
        public async Task<IActionResult> GetCities(int sid)
        {
            MyBAL.Common.Common loCommonBAL = new MyBAL.Common.Common(moCommonDataContext);

            List<City> loCities = await loCommonBAL.GetCitiesAsync(sid);

            return Ok(new
            {
                status = loCities.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loCities.Count > 0 ? "" : "No records found.",
                cities = loCities
            });
        }

        [HttpGet]
        [Route("api/v1/skills")]
        public async Task<IActionResult> GetSkills()
        {
            MyBAL.Common.Common loCommonBAL = new MyBAL.Common.Common(moCommonDataContext);

            List<Skill> loSkills = await loCommonBAL.GetSkillsAsync();

            return Ok(new
            {
                status = loSkills.Count > 0 ? StoredProcedureStatusCode.Success : StoredProcedureStatusCode.NotFound,
                message = loSkills.Count > 0 ? "" : "No records found.",
                countries = loSkills
            });
        }
    }
}
