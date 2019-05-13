contract C {
	function preincr(uint a) public pure returns (uint) {
		return ++a + a;
	}
	function postincr(uint a) public pure returns (uint) {
		return a++ + a;
	}
	function predecr(uint a) public pure returns (uint) {
		return --a + a;
	}
	function postdecr(uint a) public pure returns (uint) {
		return a-- + a;
	}
	function not(bool a) public pure returns (bool)
	{
		return !a;
	}
	function bitnot(int256 a) public pure returns (int256)
	{
		return ~a;
	}
}
// ====
// compileViaYul: true
// ----
// preincr(uint256): 2 -> 6
// postincr(uint256): 2 -> 5
// predecr(uint256): 2 -> 2
// postdecr(uint256): 2 -> 3
// not(bool): true -> false
// not(bool): false -> true
// bitnot(int256): 5 -> -6
// bitnot(int256): 10-> -11
// bitnot(int256): 0 -> -1
// bitnot(int256): -100 -> 99
