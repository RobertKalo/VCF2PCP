echo -e "======\n Testing NF execution \n======" \
&& rm -rf test/results/ \
&& nextflow run vcf2pcp.nf \
	--vcffile real-data/76g_CHB_PEL/76g_1000GP-population_set_4CHB_4NATPEL.vcf.gz \
	--sample_info test/reference/samples.txt \
	--region_tags test/reference/tag_data.tsv \
	--output_dir real-data/76g_CHB_PEL/results_v2admixture_regional_tag_by_iao_from_pc1VSpc2_ld0.85_window2000_n_sites2000_maf0.05 \
	-resume \
	-with-report real-data/76g_CHB_PEL/results_v2admixture__regional_tag_by_iao_from_pc1VSpc2_ld0.85_window2000_n_sites2000_maf0.05/`date +%Y%m%d_%H%M%S`_report.html \
	-with-dag real-data/76g_CHB_PEL/results_v2admixture__regional_tag_by_iao_from_pc1VSpc2_ld0.85_window2000_n_sites2000_maf0.05/`date +%Y%m%d_%H%M%S`.DAG.html \
&& echo -e "======\n VCF2PCP: Basic pipeline TEST SUCCESSFUL \n======"
