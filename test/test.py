import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def test_mux(dut):

    # A=0, B=1, SEL=0 -> Y=0
    dut.ui_in.value = 0b00000010
    await Timer(1, units="ns")
    assert dut.uo_out.value & 1 == 0

    # A=1, B=0, SEL=0 -> Y=1
    dut.ui_in.value = 0b00000001
    await Timer(1, units="ns")
    assert dut.uo_out.value & 1 == 1

    # A=0, B=1, SEL=1 -> Y=1
    dut.ui_in.value = 0b00000110
    await Timer(1, units="ns")
    assert dut.uo_out.value & 1 == 1

    # A=1, B=0, SEL=1 -> Y=0
    dut.ui_in.value = 0b00000101
    await Timer(1, units="ns")
    assert dut.uo_out.value & 1 == 0
