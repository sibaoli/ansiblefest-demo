SELECT count(*) as total_users from user WHERE user.enabled=1;
SELECT count(*) as total_tenants from project WHERE project.enabled=1;
SELECT count(*) as total_volumes from volumes WHERE volumes.status='available';
SELECT count(*) as total_networks from networks WHERE networks.status='ACTIVE';
SELECT SUM(instances.vcpus) as total_vCPU, SUM(instances.memory_mb) as total_memory, SUM(instances.root_gb) as total_disk from instances
WHERE instances.vm_state='active';