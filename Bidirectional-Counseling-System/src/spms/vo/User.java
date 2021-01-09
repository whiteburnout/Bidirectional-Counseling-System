package spms.vo;

import java.sql.Date;

public class User {
	//user
	protected int 		user_id;
	protected String	name;
	protected String 	e_mail;
	protected String 	password;
	protected String	phonenumber;
	protected Date		birth;
	
	//career
	protected String	field;
	protected Date 		f_start;
	protected Date 		f_end;
	protected int		f_period;
	
	//certi
	protected String	certification1;
	protected String 	certification2;
	protected String	certification3;
	protected String 	certification4;
	
	//edu
	protected String 	education;
	protected String	major;
	
	//lang
	protected int	toeic;
	protected int 	toefl;
	protected int 	hsk;
	protected int	jlpt;
	
	//g_career
	protected String	g_field;
	protected Date 		g_field_date;
	
	//g_certi
	protected String	g_certification;
	protected Date 		g_certification_date;
	
	//g_edu
	protected String 	g_education;
	protected Date		g_education_date;
	
	//g_lang
	protected int	g_toeic;
	protected int 	g_toefl;
	protected int 	g_hsk;
	protected int	g_jlpt;
	
	//introduction
	protected String introduction;
	
	//mygoal
	protected String mygoal;
	
	//year
	protected int year;
	protected int year2;
	protected int year3;
	
	//month
	protected int month;
	protected int month2;
	protected int month3;
	
	//user---------------------------------------------------------------------
	public int getUser_id() {
		return user_id;
	}
	public User setUser_id(int user_id) {
		this.user_id = user_id;
		return this;
	}
	public String getName() {
		return name;
	}
	public User setName(String name) {
		this.name = name;
		return this;
	}
	public String getEmail() {
		return e_mail;
	}
	public User setEmail(String e_mail) {
		this.e_mail = e_mail;
		return this;
	}
	public String getPassword() {
		return password;
	}
	public User setPassword(String password) {
		this.password = password;
		return this;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public User setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
		return this;
	}
	public Date getBirth() {
		return birth;
	}
	public User setBirth(Date birth) {
		this.birth = birth;
		return this;
	}
	//-------------------------------------------------------------------------
	
	//career---------------------------------------------------------------------

	public String getField() {
		return field;
	}
	public User setField(String field) {
		this.field = field;
		return this;
	}
	public Date getF_start() {
		return f_start;
	}
	public User setF_start(Date f_start) {
		this.f_start = f_start;
		return this;
	}
	public Date getF_end() {
		return f_end;
	}
	public User setF_end(Date f_end) {
		this.f_end = f_end;
		return this;
	}
	public int getF_period() {
		return f_period;
	}
	public User setF_period(int f_period) {
		this.f_period = f_period;
		return this;
	}
	//-------------------------------------------------------------------------
	
	//certi---------------------------------------------------------------------

	public String getCertification1() {
		return certification1;
	}
	public User setCertification1(String certification1) {
		this.certification1 = certification1;
		return this;
	}
	public String getCertification2() {
		return certification2;
	}
	public User setCertification2(String certification2) {
		this.certification2 = certification2;
		return this;
	}
	public String getCertification3() {
		return certification3;
	}
	public User setCertification3(String certification3) {
		this.certification3 = certification3;
		return this;
	}
	public String getCertification4() {
		return certification4;
	}
	public User setCertification4(String certification4) {
		this.certification4 = certification4;
		return this;
	}

	//-------------------------------------------------------------------------
	
	//edu---------------------------------------------------------------------

	public String getEducation() {
		return education;
	}
	public User setEducation(String education) {
		this.education = education;
		return this;
	}
	public String getMajor() {
		return major;
	}
	public User setMajor(String major) {
		this.major = major;
		return this;
	}

	//-------------------------------------------------------------------------
	
	//lang---------------------------------------------------------------------

	public int getToeic() {
		return toeic;
	}
	public User setToeic(int toeic) {
		this.toeic = toeic;
		return this;
	}
	public int getToefl() {
		return toefl;
	}
	public User setToefl(int toefl) {
		this.toefl = toefl;
		return this;
	}
	public int getHsk() {
		return hsk;
	}
	public User setHsk(int hsk) {
		this.hsk = hsk;
		return this;
	}
	public int getJlpt() {
		return jlpt;
	}
	public User setJlpt(int jlpt) {
		this.jlpt = jlpt;
		return this;
	}


	//-------------------------------------------------------------------------
	
	//g_career---------------------------------------------------------------------

	public String getG_field() {
		return g_field;
	}
	public User setG_field(String g_field) {
		this.g_field = g_field;
		return this;
	}
	public Date getG_field_date() {
		return g_field_date;
	}
	public User setG_field_date(Date g_field_date) {
		this.g_field_date = g_field_date;
		return this;
	}
	//-------------------------------------------------------------------------
	
	//g_certi---------------------------------------------------------------------

	public String getG_certification() {
		return g_certification;
	}
	public User setG_certification(String g_certification) {
		this.g_certification = g_certification;
		return this;
	}
	public Date getG_certification_date() {
		return g_certification_date;
	}
	public User setG_certification_date(Date g_certification_date) {
		this.g_certification_date = g_certification_date;
		return this;
	}

	//-------------------------------------------------------------------------
	
	//g_edu---------------------------------------------------------------------

	public String getG_education() {
		return g_education;
	}
	public User setG_education(String g_education) {
		this.g_education = g_education;
		return this;
	}
	public Date getG_education_date() {
		return g_education_date;
	}
	public User setG_education_date(Date g_education_date) {
		this.g_education_date = g_education_date;
		return this;
	}
	//-------------------------------------------------------------------------
	
	//g_lang---------------------------------------------------------------------

	public int getG_toeic() {
		return g_toeic;
	}
	public User setG_toeic(int g_toeic) {
		this.g_toeic = g_toeic;
		return this;
	}
	public int getG_toefl() {
		return g_toefl;
	}
	public User setG_toefl(int g_toefl) {
		this.g_toefl = g_toefl;
		return this;
	}
	public int getG_hsk() {
		return g_hsk;
	}
	public User setG_hsk(int g_hsk) {
		this.g_hsk = g_hsk;
		return this;
	}
	public int getG_jlpt() {
		return g_jlpt;
	}
	public User setG_jlpt(int g_jlpt) {
		this.g_jlpt = g_jlpt;
		return this;
	}


	//-------------------------------------------------------------------------
	
	//introduction---------------------------------------------------------------------
	
	public String getIntroduction() {
		return introduction;
	}
	
	public User setIntroduction(String introduction) {
		this.introduction = introduction;
		return this;
	}
	//-------------------------------------------------------------------------
	
	//mygoal---------------------------------------------------------------------
	
	public String getMygoal() {
		return mygoal;
	}
	
	public User setMygoal(String mygoal) {
		this.mygoal = mygoal;
		return this;
	}
	//-------------------------------------------------------------------------	

	//year---------------------------------------------------------------------
	public int getYear() {
		return year;
	}

	public User setYear(int year) {
		this.year = year;
		return this;
	}
	
	public int getYear2() {
		return year2;
	}

	public User setYear2(int year) {
		this.year2 = year;
		return this;
	}
	
	public int getYear3() {
		return year3;
	}

	public User setYear3(int year) {
		this.year3 = year;
		return this;
	}

	//-------------------------------------------------------------------------	

	//year---------------------------------------------------------------------
	public int getMonth() {
		return month;
	}

	public User setMonth(int month) {
		this.month = month;
		return this;
	}
	public int getMonth2() {
		return month2;
	}

	public User setMonth2(int month) {
		this.month2 = month;
		return this;
	}
	public int getMonth3() {
		return month3;
	}

	public User setMonth3(int month) {
		this.month3 = month;
		return this;
	}
}
	//-------------------------------------------------------------------------	
