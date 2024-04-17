import 'package:flutter/material.dart';

class EthicalQuestion {
  final String question;
  final IconData icon;
  final String forArg;
  final String neutralArg;
  final String agaisntArg;

  EthicalQuestion(
      {required this.question,
      required this.icon,
      required this.agaisntArg,
      required this.forArg,
      required this.neutralArg});
}

class EthicalQuestions {
  static List<EthicalQuestion> questions = [
    EthicalQuestion(
        question:
            'Should euthanasia be legalized, specifically for individuals suffering from debilitating mental illnesses?',
        icon: Icons.computer_rounded,
        forArg:
            'Legalizing euthanasia for individuals with debilitating mental illnesses acknowledges their right to autonomy and self-determination, allowing them to end their suffering if they perceive their condition as unbearable.\n\nMental illnesses can cause immense psychological distress and unrelenting pain, which may not be alleviated by conventional treatments. Euthanasia offers a compassionate option for those who have exhausted all other avenues of relief.',
        agaisntArg:
            'Legalizing euthanasia for individuals with mental illnesses raises significant ethical concerns about capacity and consent. Mental illnesses can impair decision-making abilities and distort perceptions of reality, making it challenging to determine if a person\'s desire for euthanasia is truly informed and voluntary.\n\nThere\'s a risk of misdiagnosis or inadequate treatment, where individuals may opt for euthanasia due to lack of access to appropriate mental health care or support services. Legalizing euthanasia in such cases could undermine efforts to improve mental healthcare and promote alternative treatments.',
        neutralArg:
            'Balancing the right to die with protecting vulnerable individuals with mental illnesses requires careful consideration of factors such as capacity assessment, access to quality mental healthcare, and safeguards to prevent abuse. Ethical guidelines and legal frameworks should be developed to address the complexities of euthanasia in the context of mental illness, ensuring thorough evaluation, consent processes, and support for individuals and their families.'),

    EthicalQuestion(
      question:
          'Is genetic engineering to enhance human traits, such as intelligence or physical appearance, ethical?',
      forArg:
          'enetic engineering can potentially cure genetic diseases and enhance the quality of life for individuals with hereditary disorders.\n\nIt offers opportunities for agricultural and environmental improvements, such as creating crops that are more resistant to pests and diseases.',
      agaisntArg:
          'enetic engineering raises concerns about unintended consequences and long-term effects on ecosystems, biodiversity, and human health.\n\nIt could exacerbate existing social inequalities, creating a divide between those who can afford genetic enhancements and those who cannot, widening socioeconomic disparities.',
      neutralArg:
          'Evaluating the ethics of genetic engineering requires careful consideration of both its potential benefits and risks, along with comprehensive regulations to mitigate adverse impacts.',
      icon: Icons.directions_car_rounded,
    ),
    EthicalQuestion(
      question: 'Should animals have rights?',
      forArg:
          'Animals are sentient beings capable of experiencing pain and suffering, and therefore, they deserve moral consideration and protection from exploitation.\n\nGranting animals rights promotes empathy and compassion, leading to better treatment and welfare standards in industries such as agriculture, research, and entertainment.',
      agaisntArg:
          'ranting animals rights could undermine human interests and priorities, such as medical research, agriculture, and economic activities dependent on animal use.\n\nAnimals lack the capacity for moral agency and responsibility, which is essential for the concept of rights.',
      neutralArg:
          'Recognizing the ethical status of animals requires striking a balance between respecting their interests and acknowledging human needs and interests, while also considering cultural and societal norms.',
      icon: Icons.directions_car_rounded,
    ),
    EthicalQuestion(
      question: 'it ethical to eat meat?',
      forArg:
          'Animals are sentient beings capable of experiencing pain and suffering, and therefore, they deserve moral consideration and protection from exploitation.\n\nGranting animals rights promotes empathy and compassion, leading to better treatment and welfare standards in industries such as agriculture, research, and entertainment.',
      agaisntArg:
          'ranting animals rights could undermine human interests and priorities, such as medical research, agriculture, and economic activities dependent on animal use.\n\nAnimals lack the capacity for moral agency and responsibility, which is essential for the concept of rights.',
      neutralArg:
          'Recognizing the ethical status of animals requires striking a balance between respecting their interests and acknowledging human needs and interests, while also considering cultural and societal norms.',
      icon: Icons.directions_car_rounded,
    ),
    EthicalQuestion(
      question: 'Is it ethical to use AI for automated decision-making?',
      forArg:
          'AI technologies can enhance efficiency, accuracy, and fairness in decision-making processes across various domains, including healthcare, finance, and criminal justice.\n\nImplementing AI can reduce human bias and errors, leading to more objective and consistent outcomes.',
      agaisntArg:
          'AI systems may perpetuate and amplify existing biases present in the data used to train them, leading to unfair and discriminatory outcomes, especially for marginalized groups.\n\nRelying solely on AI for decision-making can erode human accountability and responsibility, diminishing transparency and oversight.',
      neutralArg:
          'Ethical use of AI requires careful consideration of its potential benefits and risks, ensuring transparency, accountability, and fairness in its design, implementation, and regulation. Balancing automation with human oversight is crucial to address concerns about bias and accountability.',
      icon: Icons.directions_car_rounded,
    ),
    // Add more questions here as needed
  ];
}
