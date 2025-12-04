namespace MyLibrary.Utilities
{
    public class StoredProcedureStatusCode
    {
        public const int NoStatus = 0;

        public const int Success = 1;

        public const int Inserted = 101;

        public const int Updated = 102;

        public const int Deleted = 103;

        public const int NotFound = 104;

        public const int Exists = 105;

        public const int InvalidCredentials = 107;
    }
}
