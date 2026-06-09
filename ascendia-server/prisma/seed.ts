import { PrismaClient, BoardCode, SubjectName, QuestionType, QuestionStatus } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  console.log('Clearing old data...');
  await prisma.questionOption.deleteMany();
  await prisma.question.deleteMany();
  await prisma.conceptPrerequisite.deleteMany();
  await prisma.concept.deleteMany();
  await prisma.subject.deleteMany();
  await prisma.board.deleteMany();

  console.log('Seeding Board and Subjects...');
  await prisma.board.createMany({
    data: [{ id: BoardCode.CBSE, name: 'CBSE' }],
  });

  await prisma.subject.createMany({
    data: [
      { id: SubjectName.MATH, name: 'Mathematics' },
      { id: SubjectName.SCIENCE, name: 'Science' },
    ],
  });

  console.log('Seeding 10 Concepts...');
  const concepts = [
    // MATH
    { id: 'math_integers', subjectId: SubjectName.MATH, boardId: BoardCode.CBSE, classLevel: 6, title: 'Integers', description: 'Understanding positive and negative numbers.', bloomRange: '1-3' },
    { id: 'math_factors', subjectId: SubjectName.MATH, boardId: BoardCode.CBSE, classLevel: 6, title: 'Factors & Multiples', description: 'LCM, HCF, and prime factorization.', bloomRange: '1-3' },
    { id: 'math_fractions', subjectId: SubjectName.MATH, boardId: BoardCode.CBSE, classLevel: 6, title: 'Fractions', description: 'Parts of a whole, proper/improper fractions.', bloomRange: '1-4' },
    { id: 'math_decimals', subjectId: SubjectName.MATH, boardId: BoardCode.CBSE, classLevel: 6, title: 'Decimals', description: 'Fractions with denominators of 10, 100.', bloomRange: '1-4' },
    { id: 'math_algebra', subjectId: SubjectName.MATH, boardId: BoardCode.CBSE, classLevel: 6, title: 'Intro to Algebra', description: 'Variables and basic equations.', bloomRange: '2-4' },
    // SCIENCE
    { id: 'sci_motion', subjectId: SubjectName.SCIENCE, boardId: BoardCode.CBSE, classLevel: 6, title: 'Motion and Measurement', description: 'Types of motion and standard units.', bloomRange: '1-3' },
    { id: 'sci_force', subjectId: SubjectName.SCIENCE, boardId: BoardCode.CBSE, classLevel: 6, title: 'Force and Friction', description: 'Pushes, pulls, and resistance.', bloomRange: '2-4' },
    { id: 'sci_plants', subjectId: SubjectName.SCIENCE, boardId: BoardCode.CBSE, classLevel: 6, title: 'Getting to Know Plants', description: 'Roots, stems, leaves, and flowers.', bloomRange: '1-3' },
    { id: 'sci_matter', subjectId: SubjectName.SCIENCE, boardId: BoardCode.CBSE, classLevel: 6, title: 'Sorting Materials into Groups', description: 'Properties of matter: solubility, transparency.', bloomRange: '1-4' },
    { id: 'sci_electricity', subjectId: SubjectName.SCIENCE, boardId: BoardCode.CBSE, classLevel: 6, title: 'Electricity and Circuits', description: 'Cells, bulbs, switches, and closed paths.', bloomRange: '2-5' },
  ];

  for (const c of concepts) {
    await prisma.concept.create({ data: c });
  }

  console.log('Setting Prerequisites (e.g., Fractions -> Decimals)...');
  await prisma.conceptPrerequisite.createMany({
    data: [
      { conceptId: 'math_decimals', prerequisiteConceptId: 'math_fractions' },
      { conceptId: 'math_algebra', prerequisiteConceptId: 'math_integers' },
      { conceptId: 'sci_force', prerequisiteConceptId: 'sci_motion' },
    ],
  });

  console.log('Seeding 50 Questions (5 per concept)...');
  
  const seedQuestionsForConcept = async (conceptId: string, baseStem: string) => {
    for (let i = 1; i <= 5; i++) {
      const q = await prisma.question.create({
        data: {
          conceptId,
          bloomLevel: i > 3 ? 3 : 2, // Mix of bloom levels
          type: QuestionType.CONSTRUCT,
          stem: `${baseStem} (Variant ${i})`,
          correctAnswer: `Answer ${i}`,
          explanation: `Because ${baseStem} principle applies here.`,
          status: QuestionStatus.PUBLISHED,
        }
      });

      await prisma.questionOption.createMany({
        data: [
          { questionId: q.id, text: `Answer ${i}`, isCorrect: true },
          { questionId: q.id, text: `Wrong A ${i}`, isCorrect: false },
          { questionId: q.id, text: `Wrong B ${i}`, isCorrect: false },
          { questionId: q.id, text: `Wrong C ${i}`, isCorrect: false },
        ]
      });
    }
  };

  await seedQuestionsForConcept('math_integers', 'What is the sum of -5 and 3?');
  await seedQuestionsForConcept('math_factors', 'What is the LCM of 12 and 15?');
  await seedQuestionsForConcept('math_fractions', 'Simplify the fraction 8/12.');
  await seedQuestionsForConcept('math_decimals', 'Convert 3/4 to a decimal.');
  await seedQuestionsForConcept('math_algebra', 'If x + 4 = 10, what is x?');

  await seedQuestionsForConcept('sci_motion', 'Which of the following is an example of rectilinear motion?');
  await seedQuestionsForConcept('sci_force', 'What force opposes motion between two surfaces?');
  await seedQuestionsForConcept('sci_plants', 'Which part of the plant anchors it to the soil?');
  await seedQuestionsForConcept('sci_matter', 'Which material is considered transparent?');
  await seedQuestionsForConcept('sci_electricity', 'What component provides the energy in a simple circuit?');

  console.log('Seed completed: 10 Concepts and 50 Questions successfully inserted.');
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
