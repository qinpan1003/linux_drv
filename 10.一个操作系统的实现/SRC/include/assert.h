void assertfail(char * exp,char* file,char* base_file,int line);
#define	assert(exp)	if(!(exp))	assertfail(#exp, __FILE__ , __BASE_FILE__ , __LINE__)

