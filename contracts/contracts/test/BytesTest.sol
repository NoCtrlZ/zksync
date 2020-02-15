pragma solidity 0.5.16;

import "../Bytes.sol";


contract BytesTest {

    function concat(bytes calldata _a, bytes calldata _b) external pure returns (bytes memory) {
        return Bytes.concat(_a, _b);
    }

    function read(bytes calldata _data, uint _offset, uint _len) external pure returns (uint new_offset, bytes memory data) {
        return Bytes.read(_data, _offset, _len);
    }

    function testUInt24(uint24 x) external pure returns (uint24 r, uint offset) {
        require(keccak256(new bytes(0))==keccak256(new bytes(0)));

        bytes memory buf = Bytes.toBytesFromUInt24(x);
        (offset, r) = Bytes.readUInt24(buf, 0);
    }
    
}
