unit Ntapi.ntstatus;

{
  The file defines commonly used NTSTATUS values.
}

interface

{$MINENUMSIZE 4}

const
  NT_FACILITY_SHIFT = 16;
  NT_FACILITY_MASK = $FFF;

  FACILITY_NONE = $0;
  FACILITY_RPC_RUNTIME = $2;
  FACILITY_RPC_STUBS = $3;
  FACILITY_NTWIN32 = $7;
  FACILITY_TRANSACTION = $19;

  NT_SEVERITY_SHIFT = 30;

  SEVERITY_SUCCESS = $0;
  SEVERITY_INFORMATIONAL = $1;
  SEVERITY_WARNING = $2;
  SEVERITY_ERROR = $3;

  WIN32_NTSTATUS_BITS = Cardinal(SEVERITY_ERROR shl NT_SEVERITY_SHIFT) or
    (FACILITY_NTWIN32 shl NT_FACILITY_SHIFT); // 0xC0070000

  NT_SUCCESS_MIN = $00000000;
  NT_SUCCESS_MAX = $7FFFFFFF;

  // Success
  STATUS_SUCCESS = $00000000;
  STATUS_WAIT_0 = $00000000;
  STATUS_ABANDONED = $00000080;
  STATUS_USER_APC = $000000C0;
  STATUS_ALREADY_COMPLETE = $000000FF;
  STATUS_KERNEL_APC = $00000100;
  STATUS_ALERTED = $00000101;
  STATUS_TIMEOUT = $00000102;
  STATUS_PENDING = $00000103;
  STATUS_REPARSE = $00000104;
  STATUS_MORE_ENTRIES = $00000105;
  STATUS_NOT_ALL_ASSIGNED = $00000106;
  STATUS_SOME_NOT_MAPPED = $00000107;
  STATUS_OPLOCK_BREAK_IN_PROGRESS = $00000108;
  STATUS_NO_QUOTAS_FOR_ACCOUNT = $0000010D;
  STATUS_CRASH_DUMP = $00000116;
  STATUS_BUFFER_ALL_ZEROS = $00000117;
  STATUS_REPARSE_OBJECT = $00000118;
  STATUS_RESOURCE_REQUIREMENTS_CHANGED = $00000119;
  STATUS_TRANSLATION_COMPLETE = $00000120;
  STATUS_DS_MEMBERSHIP_EVALUATED_LOCALLY = $00000121;
  STATUS_NOTHING_TO_TERMINATE = $00000122;
  STATUS_PROCESS_NOT_IN_JOB = $00000123;
  STATUS_PROCESS_IN_JOB = $00000124;
  STATUS_PROCESS_CLONED = $00000129;
  STATUS_OPLOCK_SWITCHED_TO_NEW_HANDLE = $00000215;
  STATUS_OPLOCK_HANDLE_CLOSED = $00000216;
  STATUS_WAIT_FOR_OPLOCK = $00000367;
  STATUS_REPARSE_GLOBAL = $00000368;

  // Information
  STATUS_OBJECT_NAME_EXISTS = $40000000;
  STATUS_THREAD_WAS_SUSPENDED = $40000001;
  STATUS_WORKING_SET_LIMIT_RANGE = $40000002;
  STATUS_IMAGE_NOT_AT_BASE = $40000003;
  STATUS_LOCAL_USER_SESSION_KEY = $40000006;
  STATUS_BAD_CURRENT_DIRECTORY = $40000007;
  STATUS_REGISTRY_RECOVERED = $40000009;
  STATUS_IMAGE_MACHINE_TYPE_MISMATCH = $4000000E;
  STATUS_EVENT_DONE = $40000012;
  STATUS_EVENT_PENDING = $40000013;
  STATUS_SERVICE_NOTIFICATION = $40000018;
  STATUS_ALREADY_WIN32 = $4000001B;
  STATUS_IMAGE_MACHINE_TYPE_MISMATCH_EXE = $40000023;
  STATUS_NO_YIELD_PERFORMED = $40000024;
  STATUS_TIMER_RESUME_IGNORED = $40000025;
  STATUS_HEURISTIC_DAMAGE_POSSIBLE = $40190001;
  STATUS_RECOVERY_NOT_NEEDED = $40190034;
  STATUS_RM_ALREADY_STARTED = $40190035;

  // Warning
  STATUS_DATATYPE_MISALIGNMENT = $80000002;
  STATUS_BREAKPOINT = $80000003;
  STATUS_SINGLE_STEP = $80000004;
  STATUS_BUFFER_OVERFLOW = $80000005;
  STATUS_NO_MORE_FILES = $80000006;
  STATUS_HANDLES_CLOSED = $8000000A;
  STATUS_NO_INHERITANCE = $8000000B;
  STATUS_GUID_SUBSTITUTION_MADE = $8000000C;
  STATUS_PARTIAL_COPY = $8000000D;
  STATUS_DEVICE_OFF_LINE = $80000010;
  STATUS_DEVICE_BUSY = $80000011;
  STATUS_NO_MORE_EAS = $80000012;
  STATUS_INVALID_EA_NAME = $80000013;
  STATUS_EA_LIST_INCONSISTENT = $80000014;
  STATUS_INVALID_EA_FLAG = $80000015;
  STATUS_VERIFY_REQUIRED = $80000016;
  STATUS_EXTRANEOUS_INFORMATION = $80000017;
  STATUS_NO_MORE_ENTRIES = $8000001A;
  STATUS_MEDIA_CHANGED = $8000001C;
  STATUS_SERVER_HAS_OPEN_HANDLES = $80000024;
  STATUS_ALREADY_DISCONNECTED = $80000025;
  STATUS_REGISTRY_HIVE_RECOVERED = $8000002A;
  STATUS_DLL_MIGHT_BE_INSECURE = $8000002B;
  STATUS_DLL_MIGHT_BE_INCOMPATIBLE = $8000002C;
  STATUS_STOPPED_ON_SYMLINK = $8000002D;
  STATUS_CANNOT_GRANT_REQUESTED_OPLOCK = $8000002E;
  STATUS_NO_ACE_CONDITION = $8000002F;
  STATUS_NO_WORK_DONE = $80000032;
  STATUS_COULD_NOT_RESIZE_LOG = $80190009;
  STATUS_NO_TXF_METADATA = $80190029;
  STATUS_CANT_RECOVER_WITH_HANDLE_OPEN = $80190031;
  STATUS_TXF_METADATA_ALREADY_PRESENT = $80190041;
  STATUS_TRANSACTION_SCOPE_CALLBACKS_NOT_SET = $80190042;

  // Error
  STATUS_UNSUCCESSFUL = $C0000001;
  STATUS_NOT_IMPLEMENTED = $C0000002;
  STATUS_INVALID_INFO_CLASS = $C0000003;
  STATUS_INFO_LENGTH_MISMATCH = $C0000004;
  STATUS_ACCESS_VIOLATION = $C0000005;
  STATUS_IN_PAGE_ERROR = $C0000006;
  STATUS_PAGEFILE_QUOTA = $C0000007;
  STATUS_INVALID_HANDLE = $C0000008;
  STATUS_BAD_INITIAL_STACK = $C0000009;
  STATUS_BAD_INITIAL_PC = $C000000A;
  STATUS_INVALID_CID = $C000000B;
  STATUS_TIMER_NOT_CANCELED = $C000000C;
  STATUS_INVALID_PARAMETER = $C000000D;
  STATUS_NO_SUCH_DEVICE = $C000000E;
  STATUS_NO_SUCH_FILE = $C000000F;
  STATUS_INVALID_DEVICE_REQUEST = $C0000010;
  STATUS_END_OF_FILE = $C0000011;
  STATUS_NO_MEMORY = $C0000017;
  STATUS_CONFLICTING_ADDRESSES = $C0000018;
  STATUS_NOT_MAPPED_VIEW = $C0000019;
  STATUS_UNABLE_TO_FREE_VM = $C000001A;
  STATUS_UNABLE_TO_DELETE_SECTION = $C000001B;
  STATUS_INVALID_SYSTEM_SERVICE = $C000001C;
  STATUS_ILLEGAL_INSTRUCTION = $C000001D;
  STATUS_INVALID_LOCK_SEQUENCE = $C000001E;
  STATUS_INVALID_VIEW_SIZE = $C000001F;
  STATUS_INVALID_FILE_FOR_SECTION = $C0000020;
  STATUS_ALREADY_COMMITTED = $C0000021;
  STATUS_ACCESS_DENIED = $C0000022;
  STATUS_BUFFER_TOO_SMALL = $C0000023;
  STATUS_OBJECT_TYPE_MISMATCH = $C0000024;
  STATUS_NONCONTINUABLE_EXCEPTION = $C0000025;
  STATUS_INVALID_DISPOSITION = $C0000026;
  STATUS_UNWIND = $C0000027;
  STATUS_BAD_STACK = $C0000028;
  STATUS_INVALID_UNWIND_TARGET = $C0000029;
  STATUS_NOT_LOCKED = $C000002A;
  STATUS_PARITY_ERROR = $C000002B;
  STATUS_UNABLE_TO_DECOMMIT_VM = $C000002C;
  STATUS_NOT_COMMITTED = $C000002D;
  STATUS_INVALID_PORT_ATTRIBUTES = $C000002E;
  STATUS_PORT_MESSAGE_TOO_LONG = $C000002F;
  STATUS_INVALID_PARAMETER_MIX = $C0000030;
  STATUS_INVALID_QUOTA_LOWER = $C0000031;
  STATUS_DISK_CORRUPT_ERROR = $C0000032;
  STATUS_OBJECT_NAME_INVALID = $C0000033;
  STATUS_OBJECT_NAME_NOT_FOUND = $C0000034;
  STATUS_OBJECT_NAME_COLLISION = $C0000035;
  STATUS_OBJECT_PATH_INVALID = $C0000039;
  STATUS_OBJECT_PATH_NOT_FOUND = $C000003A;
  STATUS_OBJECT_PATH_SYNTAX_BAD = $C000003B;
  STATUS_DATA_OVERRUN = $C000003C;
  STATUS_DATA_LATE_ERROR = $C000003D;
  STATUS_DATA_ERROR = $C000003E;
  STATUS_CRC_ERROR = $C000003F;
  STATUS_SECTION_TOO_BIG = $C0000040;
  STATUS_PORT_CONNECTION_REFUSED = $C0000041;
  STATUS_INVALID_PORT_HANDLE = $C0000042;
  STATUS_SHARING_VIOLATION = $C0000043;
  STATUS_QUOTA_EXCEEDED = $C0000044;
  STATUS_INVALID_PAGE_PROTECTION = $C0000045;
  STATUS_MUTANT_NOT_OWNED = $C0000046;
  STATUS_SEMAPHORE_LIMIT_EXCEEDED = $C0000047;
  STATUS_PORT_ALREADY_SET = $C0000048;
  STATUS_SECTION_NOT_IMAGE = $C0000049;
  STATUS_SUSPEND_COUNT_EXCEEDED = $C000004A;
  STATUS_THREAD_IS_TERMINATING = $C000004B;
  STATUS_BAD_WORKING_SET_LIMIT = $C000004C;
  STATUS_INCOMPATIBLE_FILE_MAP = $C000004D;
  STATUS_SECTION_PROTECTION = $C000004E;
  STATUS_EAS_NOT_SUPPORTED = $C000004F;
  STATUS_EA_TOO_LARGE = $C0000050;
  STATUS_NONEXISTENT_EA_ENTRY = $C0000051;
  STATUS_NO_EAS_ON_FILE = $C0000052;
  STATUS_EA_CORRUPT_ERROR = $C0000053;
  STATUS_FILE_LOCK_CONFLICT = $C0000054;
  STATUS_LOCK_NOT_GRANTED = $C0000055;
  STATUS_DELETE_PENDING = $C0000056;
  STATUS_CTL_FILE_NOT_SUPPORTED = $C0000057;
  STATUS_UNKNOWN_REVISION = $C0000058;
  STATUS_REVISION_MISMATCH = $C0000059;
  STATUS_INVALID_OWNER = $C000005A;
  STATUS_INVALID_PRIMARY_GROUP = $C000005B;
  STATUS_NO_IMPERSONATION_TOKEN = $C000005C;
  STATUS_CANT_DISABLE_MANDATORY = $C000005D;
  STATUS_NO_LOGON_SERVERS = $C000005E;
  STATUS_NO_SUCH_LOGON_SESSION = $C000005F;
  STATUS_NO_SUCH_PRIVILEGE = $C0000060;
  STATUS_PRIVILEGE_NOT_HELD = $C0000061;
  STATUS_INVALID_ACCOUNT_NAME = $C0000062;
  STATUS_USER_EXISTS = $C0000063;
  STATUS_NO_SUCH_USER = $C0000064;
  STATUS_GROUP_EXISTS = $C0000065;
  STATUS_NO_SUCH_GROUP = $C0000066;
  STATUS_MEMBER_IN_GROUP = $C0000067;
  STATUS_MEMBER_NOT_IN_GROUP = $C0000068;
  STATUS_LAST_ADMIN = $C0000069;
  STATUS_WRONG_PASSWORD = $C000006A;
  STATUS_ILL_FORMED_PASSWORD = $C000006B;
  STATUS_PASSWORD_RESTRICTION = $C000006C;
  STATUS_LOGON_FAILURE = $C000006D;
  STATUS_ACCOUNT_RESTRICTION = $C000006E;
  STATUS_INVALID_LOGON_HOURS = $C000006F;
  STATUS_INVALID_WORKSTATION = $C0000070;
  STATUS_PASSWORD_EXPIRED = $C0000071;
  STATUS_ACCOUNT_DISABLED = $C0000072;
  STATUS_NONE_MAPPED = $C0000073;
  STATUS_TOO_MANY_LUIDS_REQUESTED = $C0000074;
  STATUS_LUIDS_EXHAUSTED = $C0000075;
  STATUS_INVALID_SUB_AUTHORITY = $C0000076;
  STATUS_INVALID_ACL = $C0000077;
  STATUS_INVALID_SID = $C0000078;
  STATUS_INVALID_SECURITY_DESCR = $C0000079;
  STATUS_PROCEDURE_NOT_FOUND = $C000007A;
  STATUS_INVALID_IMAGE_FORMAT = $C000007B;
  STATUS_NO_TOKEN = $C000007C;
  STATUS_BAD_INHERITANCE_ACL = $C000007D;
  STATUS_RANGE_NOT_LOCKED = $C000007E;
  STATUS_DISK_FULL = $C000007F;
  STATUS_SERVER_DISABLED = $C0000080;
  STATUS_SERVER_NOT_DISABLED = $C0000081;
  STATUS_TOO_MANY_GUIDS_REQUESTED = $C0000082;
  STATUS_GUIDS_EXHAUSTED = $C0000083;
  STATUS_INVALID_ID_AUTHORITY = $C0000084;
  STATUS_SECTION_NOT_EXTENDED = $C0000087;
  STATUS_NOT_MAPPED_DATA = $C0000088;
  STATUS_RESOURCE_DATA_NOT_FOUND = $C0000089;
  STATUS_RESOURCE_TYPE_NOT_FOUND = $C000008A;
  STATUS_RESOURCE_NAME_NOT_FOUND = $C000008B;
  STATUS_ARRAY_BOUNDS_EXCEEDED = $C000008C;
  STATUS_FLOAT_DIVIDE_BY_ZERO = $C000008E;
  STATUS_INTEGER_DIVIDE_BY_ZERO = $C0000094;
  STATUS_INTEGER_OVERFLOW = $C0000095;
  STATUS_PRIVILEGED_INSTRUCTION = $C0000096;
  STATUS_TOO_MANY_PAGING_FILES = $C0000097;
  STATUS_FILE_INVALID = $C0000098;
  STATUS_ALLOTTED_SPACE_EXCEEDED = $C0000099;
  STATUS_INSUFFICIENT_RESOURCES = $C000009A;
  STATUS_FREE_VM_NOT_AT_BASE = $C000009F;
  STATUS_MEMORY_NOT_ALLOCATED = $C00000A0;
  STATUS_WORKING_SET_QUOTA = $C00000A1;
  STATUS_MEDIA_WRITE_PROTECTED = $C00000A2;
  STATUS_DEVICE_NOT_READY = $C00000A3;
  STATUS_INVALID_GROUP_ATTRIBUTES = $C00000A4;
  STATUS_BAD_IMPERSONATION_LEVEL = $C00000A5;
  STATUS_CANT_OPEN_ANONYMOUS = $C00000A6;
  STATUS_BAD_VALIDATION_CLASS = $C00000A7;
  STATUS_BAD_TOKEN_TYPE = $C00000A8;
  STATUS_INSTANCE_NOT_AVAILABLE = $C00000AB;
  STATUS_PIPE_NOT_AVAILABLE = $C00000AC;
  STATUS_INVALID_PIPE_STATE = $C00000AD;
  STATUS_PIPE_BUSY = $C00000AE;
  STATUS_ILLEGAL_FUNCTION = $C00000AF;
  STATUS_PIPE_DISCONNECTED = $C00000B0;
  STATUS_PIPE_CLOSING = $C00000B1;
  STATUS_PIPE_CONNECTED = $C00000B2;
  STATUS_PIPE_LISTENING = $C00000B3;
  STATUS_INVALID_READ_MODE = $C00000B4;
  STATUS_IO_TIMEOUT = $C00000B5;
  STATUS_FILE_FORCED_CLOSED = $C00000B6;
  STATUS_PROFILING_NOT_STARTED = $C00000B7;
  STATUS_PROFILING_NOT_STOPPED = $C00000B8;
  STATUS_COULD_NOT_INTERPRET = $C00000B9;
  STATUS_FILE_IS_A_DIRECTORY = $C00000BA;
  STATUS_NOT_SUPPORTED = $C00000BB;
  STATUS_REMOTE_NOT_LISTENING = $C00000BC;
  STATUS_DUPLICATE_NAME = $C00000BD;
  STATUS_BAD_NETWORK_PATH = $C00000BE;
  STATUS_NETWORK_BUSY = $C00000BF;
  STATUS_DEVICE_DOES_NOT_EXIST = $C00000C0;
  STATUS_TOO_MANY_COMMANDS = $C00000C1;
  STATUS_BAD_DEVICE_TYPE = $C00000CB;
  STATUS_BAD_NETWORK_NAME = $C00000CC;
  STATUS_NOT_SAME_DEVICE = $C00000D4;
  STATUS_FILE_RENAMED = $C00000D5;
  STATUS_NO_SECURITY_ON_OBJECT = $C00000D7;
  STATUS_CANT_WAIT = $C00000D8;
  STATUS_PIPE_EMPTY = $C00000D9;
  STATUS_CANT_ACCESS_DOMAIN_INFO = $C00000DA;
  STATUS_CANT_TERMINATE_SELF = $C00000DB;
  STATUS_INVALID_SERVER_STATE = $C00000DC;
  STATUS_INVALID_DOMAIN_STATE = $C00000DD;
  STATUS_INVALID_DOMAIN_ROLE = $C00000DE;
  STATUS_NO_SUCH_DOMAIN = $C00000DF;
  STATUS_DOMAIN_EXISTS = $C00000E0;
  STATUS_DOMAIN_LIMIT_EXCEEDED = $C00000E1;
  STATUS_OPLOCK_NOT_GRANTED = $C00000E2;
  STATUS_INVALID_OPLOCK_PROTOCOL = $C00000E3;
  STATUS_INTERNAL_ERROR = $C00000E5;
  STATUS_GENERIC_NOT_MAPPED = $C00000E6;
  STATUS_BAD_DESCRIPTOR_FORMAT = $C00000E7;
  STATUS_INVALID_USER_BUFFER = $C00000E8;
  STATUS_NOT_LOGON_PROCESS = $C00000ED;
  STATUS_LOGON_SESSION_EXISTS = $C00000EE;
  STATUS_INVALID_PARAMETER_1 = $C00000EF;
  STATUS_INVALID_PARAMETER_2 = $C00000F0;
  STATUS_INVALID_PARAMETER_3 = $C00000F1;
  STATUS_INVALID_PARAMETER_4 = $C00000F2;
  STATUS_INVALID_PARAMETER_5 = $C00000F3;
  STATUS_INVALID_PARAMETER_6 = $C00000F4;
  STATUS_INVALID_PARAMETER_7 = $C00000F5;
  STATUS_INVALID_PARAMETER_8 = $C00000F6;
  STATUS_INVALID_PARAMETER_9 = $C00000F7;
  STATUS_INVALID_PARAMETER_10 = $C00000F8;
  STATUS_INVALID_PARAMETER_11 = $C00000F9;
  STATUS_INVALID_PARAMETER_12 = $C00000FA;
  STATUS_STACK_OVERFLOW = $C00000FD;
  STATUS_NO_SUCH_PACKAGE = $C00000FE;
  STATUS_BAD_FUNCTION_TABLE = $C00000FF;
  STATUS_VARIABLE_NOT_FOUND = $C0000100;
  STATUS_DIRECTORY_NOT_EMPTY = $C0000101;
  STATUS_FILE_CORRUPT_ERROR = $C0000102;
  STATUS_NOT_A_DIRECTORY = $C0000103;
  STATUS_BAD_LOGON_SESSION_STATE = $C0000104;
  STATUS_LOGON_SESSION_COLLISION = $C0000105;
  STATUS_NAME_TOO_LONG = $C0000106;
  STATUS_FILES_OPEN = $C0000107;
  STATUS_CONNECTION_IN_USE = $C0000108;
  STATUS_MESSAGE_NOT_FOUND = $C0000109;
  STATUS_PROCESS_IS_TERMINATING = $C000010A;
  STATUS_INVALID_LOGON_TYPE = $C000010B;
  STATUS_NO_GUID_TRANSLATION = $C000010C;
  STATUS_CANNOT_IMPERSONATE = $C000010D;
  STATUS_IMAGE_ALREADY_LOADED = $C000010E;
  STATUS_MAPPED_FILE_SIZE_ZERO = $C000011E;
  STATUS_TOO_MANY_OPENED_FILES = $C000011F;
  STATUS_CANCELLED = $C0000120;
  STATUS_CANNOT_DELETE = $C0000121;
  STATUS_INVALID_COMPUTER_NAME = $C0000122;
  STATUS_FILE_DELETED = $C0000123;
  STATUS_SPECIAL_ACCOUNT = $C0000124;
  STATUS_SPECIAL_GROUP = $C0000125;
  STATUS_SPECIAL_USER = $C0000126;
  STATUS_MEMBERS_PRIMARY_GROUP = $C0000127;
  STATUS_FILE_CLOSED = $C0000128;
  STATUS_TOO_MANY_THREADS = $C0000129;
  STATUS_THREAD_NOT_IN_PROCESS = $C000012A;
  STATUS_TOKEN_ALREADY_IN_USE = $C000012B;
  STATUS_COMMITMENT_LIMIT = $C000012D;
  STATUS_INVALID_IMAGE_NOT_MZ = $C000012F;
  STATUS_LOGON_SERVER_CONFLICT = $C0000132;
  STATUS_SYNCHRONIZATION_REQUIRED = $C0000134;
  STATUS_DLL_NOT_FOUND = $C0000135;
  STATUS_OPEN_FAILED = $C0000136;
  STATUS_IO_PRIVILEGE_FAILED = $C0000137;
  STATUS_ORDINAL_NOT_FOUND = $C0000138;
  STATUS_ENTRYPOINT_NOT_FOUND = $C0000139;
  STATUS_CONTROL_C_EXIT = $C000013A;
  STATUS_LOCAL_DISCONNECT = $C000013B;
  STATUS_REMOTE_DISCONNECT = $C000013C;
  STATUS_REMOTE_RESOURCES = $C000013D;
  STATUS_DLL_INIT_FAILED = $C0000142;
  STATUS_UNHANDLED_EXCEPTION = $C0000144;
  STATUS_APP_INIT_FAILURE = $C0000145;
  STATUS_INVALID_LEVEL = $C0000148;
  STATUS_PIPE_BROKEN = $C000014B;
  STATUS_REGISTRY_CORRUPT = $C000014C;
  STATUS_REGISTRY_IO_FAILED = $C000014D;
  STATUS_NO_EVENT_PAIR = $C000014E;
  STATUS_NO_SUCH_ALIAS = $C0000151;
  STATUS_MEMBER_NOT_IN_ALIAS = $C0000152;
  STATUS_MEMBER_IN_ALIAS = $C0000153;
  STATUS_ALIAS_EXISTS = $C0000154;
  STATUS_LOGON_NOT_GRANTED = $C0000155;
  STATUS_TOO_MANY_SECRETS = $C0000156;
  STATUS_SECRET_TOO_LONG = $C0000157;
  STATUS_TOO_MANY_CONTEXT_IDS = $C000015A;
  STATUS_LOGON_TYPE_NOT_GRANTED = $C000015B;
  STATUS_NOT_REGISTRY_FILE = $C000015C;
  STATUS_UNMAPPABLE_CHARACTER = $C0000162;
  STATUS_UNDEFINED_CHARACTER = $C0000163;
  STATUS_INVALID_BLOCK_LENGTH = $C0000173;
  STATUS_NO_MEDIA = $C0000178;
  STATUS_NO_SUCH_MEMBER = $C000017A;
  STATUS_INVALID_MEMBER = $C000017B;
  STATUS_KEY_DELETED = $C000017C;
  STATUS_TOO_MANY_SIDS = $C000017E;
  STATUS_KEY_HAS_CHILDREN = $C0000180;
  STATUS_CHILD_MUST_BE_VOLATILE = $C0000181;
  STATUS_TOO_LATE = $C0000189;
  STATUS_TRUST_FAILURE = $C0000190;
  STATUS_NETLOGON_NOT_STARTED = $C0000192;
  STATUS_ACCOUNT_EXPIRED = $C0000193;
  STATUS_POSSIBLE_DEADLOCK = $C0000194;
  STATUS_INVALID_LOCK_RANGE = $C00001A1;
  STATUS_INVALID_ACE_CONDITION = $C00001A2;
  STATUS_DUPLICATE_PRIVILEGES = $C00001A6;
  STATUS_NO_APPLICATION_PACKAGE = $C00001AA;
  STATUS_NOT_SAME_OBJECT = $C00001AC;
  STATUS_INVALID_BUFFER_SIZE = $C0000206;
  STATUS_TRANSACTION_ABORTED = $C000020F;
  STATUS_TRANSACTION_TIMED_OUT = $C0000210;
  STATUS_TRANSACTION_NO_RELEASE = $C0000211;
  STATUS_TRANSACTION_NO_MATCH = $C0000212;
  STATUS_TRANSACTION_RESPONDED = $C0000213;
  STATUS_TRANSACTION_INVALID_ID = $C0000214;
  STATUS_TRANSACTION_INVALID_TYPE = $C0000215;
  STATUS_NOT_SERVER_SESSION = $C0000216;
  STATUS_NOT_CLIENT_SESSION = $C0000217;
  STATUS_CANNOT_LOAD_REGISTRY_FILE = $C0000218;
  STATUS_DEBUG_ATTACH_FAILED = $C0000219;
  STATUS_SYSTEM_PROCESS_TERMINATED = $C000021A;
  STATUS_REPLY_MESSAGE_MISMATCH = $C000021F;
  STATUS_IMAGE_CHECKSUM_MISMATCH = $C0000221;
  STATUS_NOT_FOUND = $C0000225;
  STATUS_DUPLICATE_OBJECTID = $C000022A;
  STATUS_OBJECTID_EXISTS = $C000022B;
  STATUS_RETRY = $C000022D;
  STATUS_DOMAIN_CONTROLLER_NOT_FOUND = $C0000233;
  STATUS_ACCOUNT_LOCKED_OUT = $C0000234;
  STATUS_HANDLE_NOT_CLOSABLE = $C0000235;
  STATUS_USER_MAPPED_FILE = $C0000243;
  STATUS_BAD_DLL_ENTRYPOINT =  $C0000251;
  STATUS_FILE_IS_OFFLINE = $C0000267;
  STATUS_ILLEGAL_DLL_RELOCATION = $C0000269;
  STATUS_DLL_INIT_FAILED_LOGOFF = $C000026B;
  STATUS_DRIVER_UNABLE_TO_LOAD = $C000026C;
  STATUS_REPARSE_POINT_NOT_RESOLVED = $C0000280;
  STATUS_DIRECTORY_IS_A_REPARSE_POINT = $C0000281;
  STATUS_WMI_GUID_NOT_FOUND = $C0000295;
  STATUS_WMI_INSTANCE_NOT_FOUND = $C0000296;
  STATUS_WMI_ITEMID_NOT_FOUND = $C0000297;
  STATUS_WMI_TRY_AGAIN = $C0000298;
  STATUS_REPARSE_ATTRIBUTE_CONFLICT = $C00002B2;
  STATUS_CANT_ENABLE_DENY_ONLY = $C00002B3;
  STATUS_PORT_NOT_SET = $C0000353;
  STATUS_ALL_SIDS_FILTERED = $C000035E;
  STATUS_ACCESS_DISABLED_BY_POLICY_DEFAULT = $C0000361;
  STATUS_ACCESS_DISABLED_BY_POLICY_PATH = $C0000362;
  STATUS_ACCESS_DISABLED_BY_POLICY_PUBLISHER = $C0000363;
  STATUS_ACCESS_DISABLED_BY_POLICY_OTHER = $C0000364;
  STATUS_FAILED_DRIVER_ENTRY = $C0000365;
  STATUS_MOUNT_POINT_NOT_RESOLVED = $C0000368;
  STATUS_SYSTEM_HIVE_TOO_LARGE = $C000036E;
  STATUS_INVALID_IMPORT_OF_NON_DLL = $C000036F;
  STATUS_NO_SECRETS = $C0000371;
  STATUS_HEAP_CORRUPTION = $C0000374;
  STATUS_PER_USER_TRUST_QUOTA_EXCEEDED = $C0000401;
  STATUS_ALL_USER_TRUST_QUOTA_EXCEEDED = $C0000402;
  STATUS_USER2USER_REQUIRED = $C0000408;
  STATUS_STACK_BUFFER_OVERRUN = $C0000409;
  STATUS_NO_S4U_PROT_SUPPORT = $C000040A;
  STATUS_DELAY_LOAD_FAILED = $C0000412;
  STATUS_INVALID_USER_PRINCIPAL_NAME = $C000041C;
  STATUS_ASSERTION_FAILURE = $C0000420;
  STATUS_HIVE_UNLOADED = $C0000425;
  STATUS_NOT_CAPABLE = $C0000429;
  STATUS_IMPLEMENTATION_LIMIT = $C000042B;
  STATUS_ELEVATION_REQUIRED = $C000042C;
  STATUS_INVALID_LABEL = $C0000446;
  STATUS_INVALID_TOKEN = $C0000465;
  STATUS_COMPRESSION_NOT_BENEFICIAL = $C000046F;
  STATUS_OPERATION_IN_PROGRESS = $C0000476;
  STATUS_FILE_NOT_SUPPORTED = $C00004B4;
  STATUS_INVALID_TASK_NAME = $C0000500;
  STATUS_INVALID_TASK_INDEX = $C0000501;
  STATUS_THREAD_ALREADY_IN_TASK = $C0000502;
  STATUS_NOT_GUI_PROCESS = $C0000506;
  STATUS_CONTAINER_ASSIGNED = $C0000508;
  STATUS_JOB_NO_CONTAINER = $C0000509;
  STATUS_JOB_NOT_EMPTY = $C000050F;
  STATUS_ALREADY_INITIALIZED = $C0000510;
  STATUS_THREAD_NOT_RUNNING = $C0000516;
  STATUS_APC_RETURNED_WHILE_IMPERSONATING = $C0000711;
  STATUS_PROCESS_IS_PROTECTED = $C0000712;
  STATUS_SYMLINK_CLASS_DISABLED = $C0000715;
  STATUS_ALREADY_REGISTERED = $C0000718;
  STATUS_CONTEXT_MISMATCH = $C0000719;
  STATUS_PORT_ALREADY_HAS_COMPLETION_LIST = $C000071A;
  STATUS_INVALID_THREAD = $C000071C;
  STATUS_DISK_QUOTA_EXCEEDED = $C0000802;
  STATUS_BAD_KEY = $C000090A;
  STATUS_BAD_DATA = $C000090B;
  STATUS_HANDLE_REVOKED = $C000A006;
  STATUS_NOT_APPCONTAINER = $C000A200;
  STATUS_WOW_ASSERTION = $C0009898;
  STATUS_TRANSACTIONAL_CONFLICT = $C0190001;
  STATUS_INVALID_TRANSACTION = $C0190002;
  STATUS_TRANSACTION_NOT_ACTIVE = $C0190003;
  STATUS_TM_INITIALIZATION_FAILED = $C0190004;
  STATUS_RM_NOT_ACTIVE = $C0190005;
  STATUS_RM_METADATA_CORRUPT = $C0190006;
  STATUS_TRANSACTION_NOT_JOINED = $C0190007;
  STATUS_DIRECTORY_NOT_RM = $C0190008;
  STATUS_TRANSACTIONS_UNSUPPORTED_REMOTE = $C019000A;
  STATUS_LOG_RESIZE_INVALID_SIZE = $C019000B;
  STATUS_REMOTE_FILE_VERSION_MISMATCH = $C019000C;
  STATUS_CRM_PROTOCOL_ALREADY_EXISTS = $C019000F;
  STATUS_TRANSACTION_PROPAGATION_FAILED = $C0190010;
  STATUS_CRM_PROTOCOL_NOT_FOUND = $C0190011;
  STATUS_TRANSACTION_SUPERIOR_EXISTS = $C0190012;
  STATUS_TRANSACTION_REQUEST_NOT_VALID = $C0190013;
  STATUS_TRANSACTION_NOT_REQUESTED = $C0190014;
  STATUS_TRANSACTION_ALREADY_ABORTED = $C0190015;
  STATUS_TRANSACTION_ALREADY_COMMITTED = $C0190016;
  STATUS_TRANSACTION_INVALID_MARSHALL_BUFFER = $C0190017;
  STATUS_CURRENT_TRANSACTION_NOT_VALID = $C0190018;
  STATUS_LOG_GROWTH_FAILED = $C0190019;
  STATUS_OBJECT_NO_LONGER_EXISTS = $C0190021;
  STATUS_STREAM_MINIVERSION_NOT_FOUND = $C0190022;
  STATUS_STREAM_MINIVERSION_NOT_VALID = $C0190023;
  STATUS_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION = $C0190024;
  STATUS_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT = $C0190025;
  STATUS_CANT_CREATE_MORE_STREAM_MINIVERSIONS = $C0190026;
  STATUS_HANDLE_NO_LONGER_VALID = $C0190028;
  STATUS_LOG_CORRUPTION_DETECTED = $C0190030;
  STATUS_RM_DISCONNECTED = $C0190032;
  STATUS_ENLISTMENT_NOT_SUPERIOR = $C0190033;
  STATUS_FILE_IDENTITY_NOT_PERSISTENT = $C0190036;
  STATUS_CANT_BREAK_TRANSACTIONAL_DEPENDENCY = $C0190037;
  STATUS_CANT_CROSS_RM_BOUNDARY = $C0190038;
  STATUS_TXF_DIR_NOT_EMPTY = $C0190039;
  STATUS_INDOUBT_TRANSACTIONS_EXIST = $C019003A;
  STATUS_TM_VOLATILE = $C019003B;
  STATUS_ROLLBACK_TIMER_EXPIRED = $C019003C;
  STATUS_TXF_ATTRIBUTE_CORRUPT = $C019003D;
  STATUS_EFS_NOT_ALLOWED_IN_TRANSACTION = $C019003E;
  STATUS_TRANSACTIONAL_OPEN_NOT_ALLOWED = $C019003F;
  STATUS_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE = $C0190040;
  STATUS_TRANSACTION_REQUIRED_PROMOTION = $C0190043;
  STATUS_CANNOT_EXECUTE_FILE_IN_TRANSACTION = $C0190044;
  STATUS_TRANSACTIONS_NOT_FROZEN = $C0190045;
  STATUS_TRANSACTION_FREEZE_IN_PROGRESS = $C0190046;
  STATUS_NOT_SNAPSHOT_VOLUME = $C0190047;
  STATUS_NO_SAVEPOINT_WITH_OPEN_FILES = $C0190048;
  STATUS_SPARSE_NOT_ALLOWED_IN_TRANSACTION = $C0190049;
  STATUS_TM_IDENTITY_MISMATCH = $C019004A;
  STATUS_FLOATED_SECTION = $C019004B;
  STATUS_CANNOT_ACCEPT_TRANSACTED_WORK = $C019004C;
  STATUS_CANNOT_ABORT_TRANSACTIONS = $C019004D;
  STATUS_TRANSACTION_NOT_FOUND = $C019004E;
  STATUS_RESOURCEMANAGER_NOT_FOUND = $C019004F;
  STATUS_ENLISTMENT_NOT_FOUND = $C0190050;
  STATUS_TRANSACTIONMANAGER_NOT_FOUND = $C0190051;
  STATUS_TRANSACTIONMANAGER_NOT_ONLINE = $C0190052;
  STATUS_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION = $C0190053;
  STATUS_TRANSACTION_NOT_ROOT = $C0190054;
  STATUS_TRANSACTION_OBJECT_EXPIRED = $C0190055;
  STATUS_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION = $C0190056;
  STATUS_TRANSACTION_RESPONSE_NOT_ENLISTED = $C0190057;
  STATUS_TRANSACTION_RECORD_TOO_LONG = $C0190058;
  STATUS_NO_LINK_TRACKING_IN_TRANSACTION = $C0190059;
  STATUS_OPERATION_NOT_SUPPORTED_IN_TRANSACTION = $C019005A;
  STATUS_TRANSACTION_INTEGRITY_VIOLATED = $C019005B;
  STATUS_TRANSACTIONMANAGER_IDENTITY_MISMATCH = $C019005C;
  STATUS_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT = $C019005D;
  STATUS_TRANSACTION_MUST_WRITETHROUGH = $C019005E;
  STATUS_TRANSACTION_NO_SUPERIOR = $C019005F;
  STATUS_EXPIRED_HANDLE = $C0190060;
  STATUS_TRANSACTION_NOT_ENLISTED = $C0190061;

  // Debug
  DBG_EXCEPTION_HANDLED = $00010001;
  DBG_CONTINUE = $00010002;
  DBG_TERMINATE_THREAD = $40010003;
  DBG_TERMINATE_PROCESS = $40010004;
  DBG_EXCEPTION_NOT_HANDLED = $80010001;

  // Derivatives
  STATUS_WAIT_TIMEOUT = $C0070102; // From Win32's WAIT_TIMEOUT

implementation

{$BOOLEVAL OFF}
{$IFOPT R+}{$DEFINE R+}{$ENDIF}
{$IFOPT Q+}{$DEFINE Q+}{$ENDIF}

end.
