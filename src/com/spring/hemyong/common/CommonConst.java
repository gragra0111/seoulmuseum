package com.spring.hemyong.common;

/**
 * 상수 정의 클래스
 */
public final class CommonConst {
	/** 예 */
	public static final String YES = "Y";
	/** 아니오 */
	public static final String NO = "N";
	/** 시스템 디렉토리 구분자  */
	public static final String SYSTEM_DIR_SEP = "/";
	
	/**
	 * Property Key Name
	 */
	public static class Properties {

	}
	
	/**
	 * ======================================================================
	 * json 명명
	 * ======================================================================
	 */
	public static class JsonName {
		/** json root */
		public static final String ROOT = "hy";
		/** json result code */
		public static final String RESULT = "result";
		/** json data */
		public static final String DATA = "data";
	}
	
	/**
	 * ======================================================================
	 * 성공 코드
	 * ======================================================================
	 */
	public static class SuccessCode {
		/** 일반 성공 */
		public static final String COMMON = "100";
	}
	
	/**
	 * ======================================================================
	 * 오류 코드
	 * ======================================================================
	 */
	public static class ErrorCode {
		/** 일반 오류 */
		public static final String COMMON = "900";
		/** 유효하지 않은 사용자 오류 */
		public static final String UNAVAILABLE_USER = "901";
		/** 파라미터 누락 오류 */
		public static final String NOTFOUND_PARAMETER = "902";
		/** 유효하지 않은  파라미터 오류 */
		public static final String INVALIDATE_PARAMETER = "903";
		/** 보기(읽기) 권한 오류 */
		public static final String UNAUTHORIZED_VIEW = "904";
		/** 수정 권한 오류 */
		public static final String UNAUTHORIZED_MODIFY = "905";
		/** 생성 권한 오류 */
		public static final String UNAUTHORIZED_CREATE = "906";
		/** 이미 삭제된 항목 조회 오류 */
		public static final String ALREADY_DELETE = "907";
		/** 이미 좋아요한 항목 다시 좋아요 오류 */
		public static final String ALREADY_LIKE = "908";
		/** 존재하지 않은 항목 조회 오류 */
		public static final String NOTEXIST = "909";
		/** 비즈니스 일반 오류 */
		public static final String GENERIC_BIZ = "970";
		/** 알 수 없는 오류 */
		public static final String UNKNOWN = "999";
	}
}
