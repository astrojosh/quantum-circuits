OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q[0];
reset q[1];
reset q[2];
barrier q[0];
barrier q[1];
barrier q[2];
cx q[0],q[1];
cx q[0],q[2];
barrier q[0];
barrier q[1];
barrier q[2];
x q[0];
id q[1];
barrier q[1];
id q[2];
barrier q[2];
barrier q[0];
cx q[0],q[1];
cx q[0],q[2];
ccx q[2],q[1],q[0];