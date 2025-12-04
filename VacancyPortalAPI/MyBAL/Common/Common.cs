using Microsoft.EntityFrameworkCore;
using MyBAL.Common.Models;

namespace MyBAL.Common
{
    public class Common
    {
        private readonly CommonDataContext moCommonDataContext;

        public Common(CommonDataContext foCommonDataContext)
        {
            this.moCommonDataContext = foCommonDataContext;
        }

        public async Task<List<Country>> GetCountriesAsync()
        {
            return await moCommonDataContext.tblCountries
                                            .FromSqlRaw("EXEC GetCountries")
                                            .ToListAsync();
        }

        public async Task<List<State>> GetStatesAsync(int fiCountryID)
        {
            return await moCommonDataContext.tblStates
                                            .FromSqlRaw("EXEC GetStates @inCountryID={0}", fiCountryID)
                                            .ToListAsync();
        }

        public async Task<List<City>> GetCitiesAsync(int fiStateID)
        {
            return await moCommonDataContext.tblCities
                                            .FromSqlRaw("EXEC GetCities @inStateID={0}", fiStateID)
                                            .ToListAsync();
        }

        public async Task<List<Skill>> GetSkillsAsync()
        {
            return await moCommonDataContext.tblSkills
                                            .FromSqlRaw("EXEC GetSkills")
                                            .ToListAsync();
        }
    }
}
