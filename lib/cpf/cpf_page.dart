import 'package:flutter/material.dart';
import 'package:masterclass_gerador_cpf/cpf/model/cpf_model.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class CpfPage extends StatefulWidget {
  const CpfPage({Key? key}) : super(key: key);

  @override
  State<CpfPage> createState() => _CpfPageState();
}

class _CpfPageState extends State<CpfPage> {
  TextEditingController cpfNumero = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador CPF'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              TextAnimator(
                cpfNumero.text,
                //style: //Theme.of(context).textTheme.headline4,
                style: TextStyle(
                  fontSize: 50,
                ),
                incomingEffect:
                    WidgetTransitionEffects.incomingSlideInFromBottom(
                        curve: Curves.bounceOut,
                        duration: const Duration(milliseconds: 1500)),
                atRestEffect: WidgetRestingEffects.bounce(effectStrength: 4,),
                outgoingEffect:
                    WidgetTransitionEffects.outgoingSlideOutToRight(),
              ),
              SizedBox(
                height: 50,
              ),
              WidgetAnimator(
                incomingEffect: WidgetTransitionEffects(
                    delay: const Duration(milliseconds: 1500),
                    offset: const Offset(0, 0),
                    curve: Curves.bounceOut,
                    duration: const Duration(milliseconds: 900)),
                //atRestEffect: WidgetRestingEffects.pulse(),
                child: ElevatedButton(
                    child: const Text('Gerar CPF'),
                    onPressed: () {
                      setState(() {
                        cpfNumero.text = CPFModel().geraNumeros();
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
