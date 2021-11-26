It's a test for the methods to set all bits in cpu registers to 1, mentioned by Peter Cordes.

To run the benchmark, use `chmod +x set_to_all_1.sh && ./set_to_all_1.sh`.

The result shows below

|                    | cycles (32bit)              | cycles (64bit)              |
| ------------------ | --------------------------- | --------------------------- |
| mov e/rax,-1       | 1,300,513,988 (286.31 msec) | 1,400,481,496 (307.99 msec) |
| dec e/rax          | 1,601,072,206 (350.95 msec) | 1,700,873,588 (374.98 msec) |
| lea e/rax, [rcx-1] | 1,700,851,372 (375.08 msec) | 1,801,057,955 (394.69 msec) |
| or e/rax,-1        | 1,200,697,973 (263.64 msec) | 1,200,603,544 (263.70 msec) |
| pop rax            | N/A                         | 1,600,936,640 (351.46 msec) |