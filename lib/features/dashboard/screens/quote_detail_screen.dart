import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/common/utils/number_formatter.dart';
import '../../../common/model/preventivo_elenco_item.dart';

class QuoteDetailScreen extends StatelessWidget {
  final PreventivoElencoItem preventivo;

  const QuoteDetailScreen({
    super.key,
    required this.preventivo,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasNome = (preventivo.nome?.trim().isNotEmpty ?? false);
    final bool hasCongnome = (preventivo.congnome?.trim().isNotEmpty ?? false);
    final colorScheme = Theme.of(context).colorScheme;

    final String displayText = (hasNome && hasCongnome)
        ? '${preventivo.nome!.trim().toUpperCase()} ${preventivo.congnome!.trim().toUpperCase()} - n° ${preventivo.id}'
        : 'Preventivo n° ${preventivo.id}';

    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: colorScheme.surface,
              width: double.infinity,
              height: 190,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    displayText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSizes.bodyTextLarge,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: colorScheme.surface,
              padding: const EdgeInsets.all(44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRow(
                    context,
                    icon: Icons.calendar_today_outlined,
                    label: "Rata totale",
                    value:
                        "${preventivo.rata?.toStringAsFixed(2).replaceAll('.', ',')} €",
                  ),
                  const SectionSeparator(),
                  _buildRow(
                    context,
                    icon: Icons.payments_outlined,
                    label: "Finanziato",
                    value: "${formatNumber(preventivo.finanziato!)} €",
                  ),
                  const SectionSeparator(),
                  _buildDetails(
                    context,
                    icon: Icons.assignment_outlined,
                    details: {
                      "TAN":
                          "${preventivo.tan?.toStringAsFixed(2).replaceAll('.', ',')}%",
                      "TAEG":
                          "${preventivo.taeg?.toStringAsFixed(2).replaceAll('.', ',')}%",
                      "Servizi": (preventivo.listaServizi == null)
                          ? "Nessun servizio disponibile"
                          : (preventivo.listaServizi!.isEmpty)
                              ? "N/A"
                              : preventivo.listaServizi!
                                  .map((servizio) => (servizio
                                              .descrizionePacchetto
                                              ?.trim()
                                              .isEmpty ??
                                          true)
                                      ? "N/A"
                                      : servizio.descrizionePacchetto!.trim())
                                  .join(", "),
                      "Valore del bene":
                          "${formatNumber(preventivo.valoreBene!)} €",
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: colorScheme.primary, size: 44),
        const SizedBox(width: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: AppFontSizes.bodyTextLarge,
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                fontSize: AppFontSizes.bodyText,
                fontWeight: FontWeight.normal,
                color: colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDetails(
    BuildContext context, {
    required IconData icon,
    required Map<String, String> details,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: colorScheme.primary, size: 44),
            const SizedBox(width: 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: details.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: RichText(
                      text: TextSpan(
                        text: "${entry.key}: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSizes.bodyTextLarge,
                          color: colorScheme.primary,
                        ),
                        children: [
                          TextSpan(
                            text: entry.value,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: AppFontSizes.bodyText,
                              color: colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SectionSeparator extends StatelessWidget {
  const SectionSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        const SizedBox(height: 12),
        Divider(color: colorScheme.onPrimary),
        const SizedBox(height: 12),
      ],
    );
  }
}
