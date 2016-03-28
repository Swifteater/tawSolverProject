CC = g++
SOURCEDIR = ./src
BUILDDIR = ./bin
SOLVER = $(SOURCEDIR)/tawSolver.cpp
STANDARD = --std=c++11 -Wall -Ofast -DNDEBUG
DEBUG = -g
ROLL_LOOP = -funroll-loops
LOOP_OP = -funsafe-loop-optimizations
MATH = -fno-math-errno
MATH_OP = -funsafe-math-optimizations
WHOLE = -fwhole-program

.PHONY : all
all : $(BUILDDIR)/tawSolver

$(BUILDDIR)/tawSolver : $(SOLVER)
	$(CC) $(STANDARD) -o $@ $(SOLVER)

tawSolverRLLOMAMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(MATH) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLLOMAMAO : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(MATH) $(MATH_OP) -o $@ $(SOLVER)

tawSolverRLLOMAWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(MATH) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLLOMA : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(MATH) -o $@ $(SOLVER)

tawSolverRLLOMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLLOMAO : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(MATH_OP) -o $@ $(SOLVER)

tawSolverRLLOWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLLO : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(LOOP_OP) -o $@ $(SOLVER)

tawSolverRLMAMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(MATH) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLMAMAO : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(MATH) $(MATH_OP) -o $@ $(SOLVER)

tawSolverRLMAWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(MATH) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLMA : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(MATH) -o $@ $(SOLVER)

tawSolverRLMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverRLMAO : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(MATH_OP) -o $@ $(SOLVER)

tawSolverRLWH : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) $(WHOLE) -o $@ $(SOLVER)

tawSolverRL : $(SOLVER)
	$(CC) $(STANDARD) $(ROLL_LOOP) -o $@ $(SOLVER)

tawSolverLOMAMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(MATH) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverLOMAMAO : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(MATH) $(MATH_OP) -o $@ $(SOLVER)

tawSolverLOMAWH : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(MATH) $(WHOLE) -o $@ $(SOLVER)

tawSolverLOMA : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(MATH) -o $@ $(SOLVER)

tawSolverLOMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverLOMAO : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(MATH_OP) -o $@ $(SOLVER)

tawSolverLOWH :  $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverLO : $(SOLVER)
	$(CC) $(STANDARD) $(LOOP_OP) -o $@ $(SOLVER)

tawSolverMAMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(MATH) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverMAMAO : $(SOLVER)
	$(CC) $(STANDARD) $(MATH) $(MATH_OP) -o $@ $(SOLVER)

tawSolverMAWH : $(SOLVER)
	$(CC) $(STANDARD) $(MATH) $(WHOLE) -o $@ $(SOLVER)

tawSolverMA : $(SOLVER)
	$(CC) $(STANDARD) $(MATH) -o $@ $(SOLVER)

tawSolverMAOWH : $(SOLVER)
	$(CC) $(STANDARD) $(MATH_OP) $(WHOLE) -o $@ $(SOLVER)

tawSolverMAO : $(SOLVER)
	$(CC) $(STANDARD) $(MATH_OP) -o $@ $(SOLVER)

tawSolverWH : $(SOLVER)
	$(CC) $(STANDARD) $(WHOLE) -o $@ $(SOLVER)

clean :
	rm tawSolver tawSolverRL