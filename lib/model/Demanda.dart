
import 'dart:math';

import 'package:bernard/model/Precificacao.dart';
import 'package:bernard/model/Evidencia.dart';

class Demanda{
  final String descricao;
  final double orcamentoMaximo;
  late double _valorCobrado;
  final List<Precificacao> precificacoes = List.empty(growable: true);
  late Precificacao _ofertaVencedora ;
  final String contato;
  final List<Evidencia> evidencias = List.empty(growable: true);

  Demanda(this.descricao, this.orcamentoMaximo, this.contato){
    this._ofertaVencedora = Precificacao(orcamentoMaximo+1);
  }

  Precificacao getOfertaVencedora()=>_ofertaVencedora;
  double getValorCobrado()=>_valorCobrado;

  void calculaOfertaVencedora( List<Precificacao> offers) {

    List<Precificacao> aux = new List.from(precificacoes);
    double precoMedio = orcamentoMaximo+1;

    while(precoMedio>orcamentoMaximo){

      double sum = aux.fold(0, (previousValue, element) => previousValue+element.preco);
      precoMedio = sum/aux.length;

      if(precoMedio>orcamentoMaximo){
        Precificacao precificacaoMaisCara =aux.reduce((value, element) => value.preco>element.preco?value:element);
        aux.remove(precificacaoMaisCara);
      }

      if(aux.isEmpty){
        break;
      }

    }
    this._ofertaVencedora=aux.reduce((value, element) => value.preco>element.preco?element:value);
    this._valorCobrado=precoMedio;
  }



}

