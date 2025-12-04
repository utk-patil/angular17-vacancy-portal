using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using MyBAL.Vacancies.Models;
using MyLibrary.Utilities;
using System.Data;

namespace MyBAL.Vacancies
{
    public class Vacancies
    {
        private readonly VacancyDataContext moVacancyDataContext;

        public Vacancies(VacancyDataContext foVacancyDataContext)
        {
            this.moVacancyDataContext = foVacancyDataContext;
        }

        public async Task<List<Vacancy>> GetVacanciesAsync(int? fiVacancyId, int? fiPostedBy, int? fiUserId, bool? fbIsActive, string fsSearch, int fiPageNumber, int fiPageSize)
        {
            return await moVacancyDataContext.tblVacancies
                .FromSqlInterpolated($@"EXEC GetVacancies @inVacancyID = {fiVacancyId}, @inUserID = {fiUserId}, @inPostedBy = {fiPostedBy}, @flgIsActive = {fbIsActive}, @stSearch = {fsSearch}, 
                                        @inPageNumber = {fiPageNumber}, @inPageSize = {fiPageSize}")
                .ToListAsync();
        }

        public async Task<List<MyApplication>> GetMyApplicationsAsync(int? fiVacancyId, int? fiUserId, string fsSearch, int? fiStatus, int fiPageNumber, int fiPageSize)
        {
            return await moVacancyDataContext.tblApplications
                .FromSqlInterpolated($@"EXEC GetMyApplications @inVacancyID = {fiVacancyId}, @inUserID = {fiUserId}, @stSearch = {fsSearch}, @inStatus = {fiStatus}, 
                                        @inPageNumber = {fiPageNumber}, @inPageSize = {fiPageSize}")
                .ToListAsync();
        }

        public async Task<int> WithdrawApplicationAsync(int fiApplicationId, int fiUserId)
        {
            var loSuccess = new SqlParameter
            {
                ParameterName = "@inSuccess",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output,
                Value = StoredProcedureStatusCode.NoStatus
            };

            await moVacancyDataContext.Database.ExecuteSqlInterpolatedAsync($@"EXEC WithdrawApplication @inApplicationID = {fiApplicationId}, @inUserID = {fiUserId},
                                                                            @inSuccess = {loSuccess} OUTPUT");

            return (int)loSuccess.Value;
        }

        public async Task<int> ApplyVacancyAsync(int fiVacancyId, int fiUserId)
        {
            var loSuccess = new SqlParameter
            {
                ParameterName = "@inSuccess",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output,
                Value = StoredProcedureStatusCode.NoStatus
            };

            await moVacancyDataContext.Database.ExecuteSqlInterpolatedAsync($@"EXEC ApplyForVacancy @inVacancyID = {fiVacancyId}, @inUserID = {fiUserId},
                                                                            @inSuccess = {loSuccess} OUTPUT");

            return (int)loSuccess.Value;
        }

        public async Task<int> PostVacancyAsync(PostVacancyRequest foPostVacancyRequest)
        {
            var loSuccess = new SqlParameter
            {
                ParameterName = "@inSuccess",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output,
                Value = StoredProcedureStatusCode.NoStatus
            };

            await moVacancyDataContext.Database.ExecuteSqlInterpolatedAsync($@"EXEC PostVacancy @inVacancyID = {foPostVacancyRequest.inVacancyID}, @stTitle = {foPostVacancyRequest.stTitle}, @stDescription = {foPostVacancyRequest.stDescription},
                                                                                @inCountryID = {foPostVacancyRequest.inCountryID}, @inStateID = {foPostVacancyRequest.inStateID}, @inCityID = {foPostVacancyRequest.inCityID},
                                                                                @flgIsActive = {foPostVacancyRequest.flgIsActive}, @inUserID = {foPostVacancyRequest.inUserID}, @inSuccess = {loSuccess} OUTPUT");

            return (int)loSuccess.Value;
        }

        public async Task<int> DeleteVacancyAsync(int fiVacancyID)
        {
            var loSuccess = new SqlParameter
            {
                ParameterName = "@inSuccess",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output,
                Value = 0
            };

            await moVacancyDataContext.Database.ExecuteSqlInterpolatedAsync($@"EXEC DeleteVacancy @inVacancyID = {fiVacancyID}, @inSuccess = {loSuccess} OUTPUT");

            return (int)loSuccess.Value;
        }

        public async Task<List<MyApplication>> GetVacancyApplicationsAsync(int? fiVacancyId, int? fiUserId, string fsSearch, int? fiStatus, int fiPageNumber, int fiPageSize)
        {
            return await moVacancyDataContext.tblApplications
                .FromSqlInterpolated($@"EXEC GetVacancyApplications @inVacancyID = {fiVacancyId}, @inUserID = {fiUserId}, @stSearch = {fsSearch}, @inStatus = {fiStatus}, 
                                        @inPageNumber = {fiPageNumber}, @inPageSize = {fiPageSize}")
                .ToListAsync();
        }

        public async Task<int> UpdateApplicationStatusAsync(int fiApplicationID, int fiStatus, int fiUserID)
        {
            var loSuccess = new SqlParameter
            {
                ParameterName = "@inSuccess",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output,
                Value = StoredProcedureStatusCode.NoStatus
            };

            await moVacancyDataContext.Database.ExecuteSqlInterpolatedAsync($@"EXEC UpdateApplicationStatus @inApplicationID = {fiApplicationID}, @inStatus = {fiStatus}, @inUserID = {fiUserID}, @inSuccess = {loSuccess} OUTPUT");

            return (int)loSuccess.Value;
        }

    }
}
